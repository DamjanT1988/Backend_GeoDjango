from django.db import models
from django.contrib.auth.models import User
from django.db.models import JSONField

class SpeciesCentralDatabank(models.Model):
    taxon_id = models.IntegerField("Taxon ID:", null=True, blank=True)
    species_name_common = models.CharField("Svenskt namn:", max_length=255, null=True, blank=True)
    latin_name = models.CharField("Vetenskapligt namn:", max_length=255, null=True, blank=True)
    species_data = JSONField()
    last_update_date = models.DateTimeField("Senast uppdaterad:", auto_now_add=True)
    source = models.CharField("Källa:", max_length=255, null=True, blank=True)

    class Meta:
            verbose_name = "Artdatabanken"
            verbose_name_plural = "Artdatabanken"

    def __str__(self):
        return self.species_name_common

class SpeciesUserDatabank(models.Model):
        """
        Represents a species in the user's databank.

        Attributes:
                taxon_id (int): The taxon ID of the species.
                species_name_common (str): The common name of the species.
                latin_name (str): The scientific name of the species.
                species_data (str): Additional information about the species.
                last_update_date (datetime): The date and time when the species was last updated.
                source (str): The source of the species information.
                user (User): The user who owns the species.

        Meta:
                verbose_name (str): The singular name for the model in the admin interface.
                verbose_name_plural (str): The plural name for the model in the admin interface.
        """

        taxon_id = models.IntegerField("Taxon ID:", null=True, blank=True)
        species_name_common = models.CharField("Svenskt namn:", max_length=255, null=True, blank=True)
        latin_name = models.CharField("Vetenskapligt namn:", max_length=255, null=True, blank=True)
        species_data = models.TextField("Information:", null=True, blank=True)
        last_update_date = models.DateTimeField("Senast uppdaterad:", auto_now_add=True, null=True, blank=True)
        source = models.CharField("Källa:", max_length=255, null=True, blank=True)
        user = models.ForeignKey(User, on_delete=models.CASCADE)

        class Meta:
                verbose_name = "Användardatabas"
                verbose_name_plural = "Användardatabas"

        def __str__(self):
                return f"{self.species_name_common} by {self.user.username}"
