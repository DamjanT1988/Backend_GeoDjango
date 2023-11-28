from django.db import models
from django.contrib.auth.models import User

class User_additional(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    organization_name = models.CharField(max_length=255)
    role = models.CharField(max_length=255)
    job_title = models.CharField(max_length=255)
    department = models.CharField(max_length=255)
    phone_number = models.CharField(max_length=20)
