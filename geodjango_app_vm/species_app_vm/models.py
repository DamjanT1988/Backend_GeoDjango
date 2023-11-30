from django.db import models
from django.contrib.auth.models import User
from django.db.models import JSONField

class SpeciesCentralDatabank(models.Model):
    species_name_common = models.CharField("Svenskt namn:", max_length=255)
    latin_name = models.CharField("Vetenskapligt namn:", max_length=255)
    species_data = JSONField()
    last_update_date = models.DateTimeField("Senast uppdaterad:", auto_now_add=True)
    source = models.CharField("Källa:", max_length=255)

    class Meta:
            verbose_name = "Artdatabanken"
            verbose_name_plural = "Artdatabanken"

    def __str__(self):
        return self.species_name_common

class SpeciesUserDatabank(models.Model):
    species_name_common = models.CharField("Svenskt namn:", max_length=255)
    latin_name = models.CharField("Vetenskapligt namn:", max_length=255)
    species_data = JSONField()
    last_update_date = models.DateTimeField("Senast uppdaterad:", auto_now_add=True)
    source = models.CharField("Källa:", max_length=255)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    class Meta:
            verbose_name = "Användardatabas"
            verbose_name_plural = "Användardatabas"

    def __str__(self):
        return f"{self.species_name_common} by {self.user.username}"
