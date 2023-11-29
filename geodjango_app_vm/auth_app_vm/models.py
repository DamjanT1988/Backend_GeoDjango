from django.db import models
from django.contrib.auth.models import User

class User_additional(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    organization_name = models.CharField("Organisation:", max_length=255, null=True, blank=True)
    role = models.CharField("Roll:", max_length=255, null=True, blank=True)
    job_title = models.CharField("Jobbtitel:", max_length=255, null=True, blank=True)
    department = models.CharField("Avdelning:", max_length=255, null=True, blank=True)
    phone_number = models.CharField("Telefonnummer:", max_length=100, null=True, blank=True)

    class Meta:
            verbose_name = "Ytterligare användarinformation"
            verbose_name_plural = "Ytterligare användarinformation"

class Audit_log(models.Model):
    action = models.CharField("Aktion:", max_length=255, null=True, blank=True)
    details = models.TextField("Information:", null=True, blank=True)
    timestamp = models.DateTimeField("Tidslag:", auto_now_add=True, null=True, blank=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    class Meta:
            verbose_name = "Revisionslogg"
            verbose_name_plural = "Revisionslogg"