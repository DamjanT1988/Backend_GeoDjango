from django.db import models
from django.contrib.auth.models import User

class User_additional(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    organization_name = models.CharField(max_length=255, null=True, blank=True)
    role = models.CharField(max_length=255, null=True, blank=True)
    job_title = models.CharField(max_length=255, null=True, blank=True)
    department = models.CharField(max_length=255, null=True, blank=True)
    phone_number = models.CharField(max_length=100, null=True, blank=True)

class Audit_log(models.Model):
    action = models.CharField(max_length=255, null=True, blank=True)
    details = models.TextField(null=True, blank=True)
    timestamp = models.DateTimeField(auto_now_add=True, null=True, blank=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE)