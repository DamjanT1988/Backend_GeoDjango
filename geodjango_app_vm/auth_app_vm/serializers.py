from django.contrib.auth.models import User
from rest_framework import serializers
from .models import User_additional  # Ensure this import is correct based on your project structure

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
        user = User.objects.create_user(
            username=validated_data['username'],
            email=validated_data['email'],
            first_name=validated_data.get('first_name', ''),  # Get first_name
            last_name=validated_data.get('last_name', '')    # Get last_name
        )
        user.set_password(validated_data['password'])
        user.save()

        if user_additional_data:
            User_additional.objects.create(user=user, **user_additional_data)

        return user
