# species_app_vm/models.py

from django.db import models
from django.contrib.auth.models import User
# from django.contrib.postgres.fields import JSONField
from django.db.models import JSONField

class SpeciesCentralDatabank(models.Model):
    species_name_common = models.CharField(max_length=255)
    species_data = JSONField()
    last_update_date = models.DateTimeField(auto_now_add=True)
    source = models.CharField(max_length=255)

    def __str__(self):
        return self.species_name_common

class SpeciesUserDatabank(models.Model):
    species_name_common = models.CharField(max_length=255)
    species_data = JSONField()
    last_update_date = models.DateTimeField(auto_now_add=True)
    source = models.CharField(max_length=255)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.species_name_common} by {self.user.username}"
