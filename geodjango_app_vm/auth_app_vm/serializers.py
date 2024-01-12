# auth_app_vm/serializers.py

from django.contrib.auth.models import User
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