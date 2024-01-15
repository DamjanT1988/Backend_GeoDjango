# auth_app_vm/serializers.py

from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from rest_framework import serializers
from auth_app_vm.models import *

class UserAdditionalSerializer(serializers.ModelSerializer):
    class Meta:
        model = User_additional
        fields = ['organization_name', 'organization_number', 'role', 'job_title', 'department', 'phone_number']

class UserPaymentSerializer(serializers.ModelSerializer):
    class Meta:
        model = User_payment
        fields = ['active_account', 'Payment_latest_invoice', 'payment_date', 
                  'payment_price', 'payment_invoice_number', 'payment_invoice_date', 
                  'payment_invoice_due_date', 'payment_email', 'payment_adress', 
                  'payment_telephone', 'payment_reference', 'payment_comment']

class UserCreationSerializer(serializers.ModelSerializer):
    user_additional = UserAdditionalSerializer(required=False)
    user_payment = UserPaymentSerializer(required=False)

    class Meta:
        model = User
        fields = ['username', 'email', 'password', 'first_name', 'last_name', 'user_additional', 'user_payment']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user_additional_data = validated_data.pop('user_additional', None)
        user_payment_data = validated_data.pop('user_payment', None)
        user = User.objects.create_user(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        if user_additional_data:
            User_additional.objects.create(user=user, **user_additional_data)

        if user_payment_data:
            User_payment.objects.create(user=user, **user_payment_data)

        return user
    
    def update(self, instance, validated_data):
        user_additional_data = validated_data.pop('user_additional', None)
        user_payment_data = validated_data.pop('user_payment', None)
        user_additional_instance = getattr(instance, 'user_additional', None)
        user_payment_instance = getattr(instance, 'user_payment', None)

        # Check if 'password' is in the validated_data and update if present and not blank
        password = validated_data.pop('password', None)
        if password is not None and password != '':
            instance.set_password(password)

        # Update the rest of the fields
        for attr, value in validated_data.items():
            setattr(instance, attr, value)
        instance.save()

        # Handle the user_additional data
        if user_additional_data is not None:
            # Update or create the User_additional instance
            if user_additional_instance:
                for attr, value in user_additional_data.items():
                    setattr(user_additional_instance, attr, value)
                user_additional_instance.save()
            else:
                User_additional.objects.create(user=instance, **user_additional_data)

        # Handle the user_payment data
        if user_payment_data is not None:
            # Update or create the User_payment instance
            if user_payment_instance:
                for attr, value in user_payment_data.items():
                    setattr(user_payment_instance, attr, value)
                user_payment_instance.save()
            else:
                User_payment.objects.create(user=instance, **user_payment_data)

        return instance
    
class PasswordValidationSerializer(serializers.Serializer):
    username = serializers.CharField()
    password = serializers.CharField()

    def validate(self, data):
        user = authenticate(username=data['username'], password=data['password'])
        if user:
            return data
        raise serializers.ValidationError("Invalid password.")