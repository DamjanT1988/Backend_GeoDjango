# auth_app_vm/serializers.py

from django.contrib.auth.models import User
from rest_framework import serializers
from auth_app_vm.models import *

class UserAdditionalSerializer(serializers.ModelSerializer):
    class Meta:
        model = User_additional
        fields = ['organization_name', 'role', 'job_title', 'department', 'phone_number']

class UserCreationSerializer(serializers.ModelSerializer):
    user_additional = UserAdditionalSerializer(required=False)

    class Meta:
        model = User
        fields = ['username', 'email', 'password', 'first_name', 'last_name', 'user_additional']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user_additional_data = validated_data.pop('user_additional', None)
        user = User.objects.create_user(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        if user_additional_data:
            User_additional.objects.create(user=user, **user_additional_data)

        return user

    def update(self, instance, validated_data):
        user_additional_data = validated_data.pop('user_additional', None)
        user_additional_instance = getattr(instance, 'user_additional', None)

        instance = super(UserCreationSerializer, self).update(instance, validated_data)

        if user_additional_data is not None:
            # Update or create the User_additional instance
            if user_additional_instance:
                for attr, value in user_additional_data.items():
                    setattr(user_additional_instance, attr, value)
                user_additional_instance.save()
            else:
                User_additional.objects.create(user=instance, **user_additional_data)

        return instance

class UserPaymentSerializer(serializers.ModelSerializer):
    class Meta:
        model = User_payment
        fields = ['user', 'active_account', 'Payment_latest_invoice', 'payment_date', 
                  'payment_price', 'payment_invoice_number', 'payment_invoice_date', 
                  'payment_invoice_due_date', 'payment_email', 'payment_adress', 
                  'payment_telephone', 'payment_reference', 'payment_comment']