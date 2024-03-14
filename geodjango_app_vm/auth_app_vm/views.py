from django.http import JsonResponse
from django.contrib.auth.models import User
from django.utils import timezone
from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.hashers import make_password
import string
import random
from django.contrib.auth.tokens import PasswordResetTokenGenerator
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes
from rest_framework import generics, permissions, status, views, response
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import IsAuthenticated
from auth_app_vm.serializers import *
from django.contrib.auth import authenticate
from datetime import timedelta
import random

"""

# Allow in production
def check_request_origin(request):
    allowed_domain = 'https://www.yourwebappdomain.com'
    origin = request.META.get('HTTP_ORIGIN')
    referer = request.META.get('HTTP_REFERER')

    if origin and origin == allowed_domain:
        return True
    elif referer and referer.startswith(allowed_domain):
        return True
    else:
        return False
"""
        
class CreateUserView(APIView):
    def post(self, request):
        data = request.data

        # Check if username is provided and if it's blank
        if 'username' in data and not data['username']:
            is_unique = False
            while not is_unique:
                random_number = random.randint(10000, 99999)  # Generate a random five-digit number
                new_username = f'Användare{random_number}'
                
                # Check if any user already has this username
                if not User.objects.filter(username=new_username).exists():
                    is_unique = True  # If the username is unique, exit the loop

            data['username'] = new_username  # Assign the unique username

        serializer = UserCreationSerializer(data=data)
        if serializer.is_valid():
            user = serializer.save()
            
            # Prepare email content
            email_subject = 'Välkommer till NVVI-appen!'
            email_body = f"""
            Hej {user.first_name}!

            Nedan är dina inloggningsuppgifter till NVVI-appen:
            Användarnamn: {user.username}
            E-mejl: {user.email}

            Om ni behöver nytt lösenord besök inloggningsidan och klicka på "Glömt lösenord" så får ni det på er e-mejl.

            Vänliga hälsningar,
            Väg & Miljö
            """

            # Send email
            send_mail(
                subject=email_subject,
                message=email_body,
                from_email=settings.DEFAULT_FROM_EMAIL,
                recipient_list=[user.email],
            )


            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class LoginView(APIView):
    def post(self, request):
        username = request.data.get('username')
        password = request.data.get('password')
        user = authenticate(username=username, password=password)

        if user:
            # Update last login time
            user.last_login = timezone.now()
            user.save(update_fields=['last_login'])

 # Create token with extended life if 'remember_me' is True
            remember_me = request.data.get('remember_me', False)
            refresh = RefreshToken.for_user(user)

            if remember_me:
                # Extend the token's lifetime, e.g., 30 days
                refresh.set_exp(lifetime=timedelta(days=30))

            return Response({
                'refresh': str(refresh),
                'access': str(refresh.access_token),
            })
        
        return Response({'error': 'Invalid Credentials'}, status=status.HTTP_401_UNAUTHORIZED)

class LogoutView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        try:
            refresh_token = request.data.get('refresh')
            token = RefreshToken(refresh_token)
            token.blacklist()
            return Response(status=status.HTTP_205_RESET_CONTENT)
        except Exception as e:
            return Response(status=status.HTTP_400_BAD_REQUEST)

class UserRetrieveUpdateView(generics.RetrieveUpdateAPIView):
    queryset = User.objects.all()
    serializer_class = UserCreationSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_object(self):
        """
        Returns the object the view is displaying.
        Override to return the user object corresponding to the user making the request.
        """
        return self.request.user

class UserCreateView(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserCreationSerializer
    permission_classes = [permissions.AllowAny]  # Or [permissions.IsAuthenticated] based on your requirements

class UserDeleteView(APIView):
    """
    View for deleting a user account.

    Only authenticated users are allowed to access this view.
    """

    permission_classes = [IsAuthenticated]

    def delete(self, request, user_id=None):
        # Allow user to delete their own account, or allow admin to delete any account
        user = request.user

        # Optional: Check if the requesting user is trying to delete their own account or is an admin
        if user.id != user_id and not user.is_superuser:
            return Response({'error': 'You do not have permission to perform this action.'}, status=status.HTTP_403_FORBIDDEN)

        try:
            # If an admin is deleting another user, find that user
            if user.is_superuser and user_id is not None:
                user = User.objects.get(id=user_id)

            user.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except User.DoesNotExist:
            return Response({'error': 'User not found.'}, status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            return Response({'error': str(e)}, status=status.HTTP_400_BAD_REQUEST)


class PasswordValidationView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = PasswordValidationSerializer(data=request.data)
        if serializer.is_valid():
            return Response({'message': 'Password is valid'}, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
class PasswordResetView(APIView):
    def post(self, request):
        username = request.data.get('username', None)
        if username:
            try:
                user = User.objects.get(username=username)

                # Generate a random password
                new_password = ''.join(random.choices(string.ascii_letters + string.digits, k=10))
                user.password = make_password(new_password)
                user.save()

                # Send an email with the new password
                send_mail(
                    subject='Your new password',
                    message=f'Here is your new password: {new_password}',
                    from_email=settings.DEFAULT_FROM_EMAIL,
                    recipient_list=[user.email],
                )
                return Response({'message': 'New password has been sent to your email.'}, status=status.HTTP_200_OK)

            except User.DoesNotExist:
                return Response({'error': 'User not found.'}, status=status.HTTP_404_NOT_FOUND)
        return Response({'error': 'Username not provided.'}, status=status.HTTP_400_BAD_REQUEST)


class UserPaymentCreateView(APIView):
    def post(self, request):
        serializer = UserPaymentSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class UserPaymentView(APIView):
    # Ensure that only authenticated users can access this view
    permission_classes = [IsAuthenticated]

    def get(self, request, format=None):
        # Assuming you have a relation from user to payment, and one user has one payment info
        user_payment = User_payment.objects.filter(user=request.user).first()
        serializer = UserPaymentSerializer(user_payment)
        return Response(serializer.data)
    
    def put(self, request, format=None):
        try:
            user_payment = User_payment.objects.get(user=request.user)
            serializer = UserPaymentSerializer(user_payment, data=request.data)

            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except User_payment.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
        
