from django.http import JsonResponse
from django.contrib.auth.models import User
from django.utils import timezone
from rest_framework import generics, permissions, status, views, response
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import IsAuthenticated
from auth_app_vm.serializers import *
from django.contrib.auth import authenticate

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
        # Allow in production
        #if not check_request_origin(request):
        #    return JsonResponse({'error': 'Invalid origin'}, status=403)
        serializer = UserCreationSerializer(data=request.data)
        if serializer.is_valid():
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

            # Create token
            refresh = RefreshToken.for_user(user)
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

class UserPaymentCreateView(APIView):
    def post(self, request):
        serializer = UserPaymentSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)