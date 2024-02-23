import uuid
from survey_app_vm.models_other import *  # Import all models from models_other.py
from survey_app_vm.models_nature_mark import *
from survey_app_vm.models_nature_sotvatten import *
from survey_app_vm.models_nature_hav import *
from django.contrib.gis.db import models as gis_models
from django.urls import reverse

class LandscapeArea(models.Model):
    image = models.ImageField(upload_to='landscape_images/', blank=True, null=True)  # For storing image files
    filename = models.CharField(max_length=255, blank=True)
    file_identity = models.CharField(max_length=255, blank=True)
    file_link = models.URLField(max_length=200, blank=True)
    namespace = models.CharField(max_length=255, blank=True)
    object_delimitation_date = models.DateTimeField(auto_now_add=True)  # Automatically set when object is created
    extends_beyond_survey_area = models.BooleanField(default=False)
    preliminary_delimitation_explanation = models.TextField(blank=True)
    invasive_species = models.TextField(blank=True)
    value_landscape_motivation = models.TextField(blank=True)
    object_description = models.TextField()
    object_name = models.CharField(max_length=255, blank=True)
    object_number = models.CharField(max_length=255, unique=True)
    object_version = models.IntegerField()
    preliminary_delimitation = models.BooleanField(default=False)
    references = models.TextField(blank=True)
    performer = models.CharField(max_length=255)  # This could be linked to a User model or another model representing individuals
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)
    known_value_species = models.TextField(blank=True)
    observed_value_species = models.TextField(blank=True)
    is_value_landscape = models.BooleanField(default=False)

    # Assuming you want to include spatial data for the landscape area
    geom = gis_models.PolygonField()

    def __str__(self):
        return f"{self.object_name} - {self.object_number}"
    

class NatureConservationHabitat(models.Model):
    species_values = models.TextField()
    image_filename = models.CharField(max_length=255)
    file_identity = models.CharField(max_length=255, blank=True)
    file_link = models.URLField(max_length=200, blank=True)
    namespace = models.CharField(max_length=255, blank=True)
    habitat_values = models.TextField()
    object_delimitation_date = models.DateTimeField()
    extends_beyond_survey_area = models.BooleanField(default=False)
    preliminary_delimitation_explanation = models.TextField(blank=True)
    preliminary_value_class_explanation = models.TextField(blank=True)
    hydromorphological_type = models.CharField(max_length=255, blank=True)
    hydrological_type_code = models.CharField(max_length=255, blank=True)
    invasive_species = models.TextField()
    supplementary_biotope_type = models.CharField(max_length=255, blank=True)
    supplementary_conservation_code = models.CharField(max_length=255, blank=True)
    nature_type = models.CharField(max_length=255)
    conservation_value_class = models.CharField(max_length=255)
    object_description = models.TextField()
    object_name = models.CharField(max_length=255, blank=True)
    object_number = models.CharField(max_length=255, unique=True)
    object_version = models.IntegerField()
    preliminary_delimitation = models.BooleanField(default=False)
    preliminary_value_class = models.BooleanField(default=False)
    references = models.TextField()
    performer = models.CharField(max_length=255)  # Could be linked to a User model or another model representing individuals
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)
    known_value_species = models.TextField()
    observed_value_species = models.TextField()

    # Assuming spatial data for the habitat area
    geom = gis_models.PolygonField()

    def __str__(self):
        return f"{self.object_name} - {self.object_number}"
         
class ValueElement(models.Model):
    image_filename = models.CharField(max_length=255, blank=True)
    file_identity = models.CharField(max_length=255, blank=True)
    file_link = models.URLField(max_length=200, blank=True)
    namespace = models.CharField(max_length=255, blank=True)
    object_delimitation_date = models.DateTimeField()
    extends_beyond_survey_area = models.BooleanField(default=False, blank=True)
    preliminary_delimitation_explanation = models.TextField(blank=True)
    invasive_species = models.TextField(blank=True)
    object_description = models.TextField(blank=True)
    object_name = models.CharField(max_length=255, blank=True)
    object_number = models.CharField(max_length=255, blank=True, unique=True)
    object_version = models.IntegerField()
    preliminary_delimitation = models.BooleanField(default=False, blank=True)
    references = models.TextField(blank=True)
    performer = models.CharField(max_length=255)
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)
    known_value_species = models.TextField(blank=True)
    observed_value_species = models.TextField(blank=True)
    value_element_type = models.CharField(max_length=255)

    # Spatial data for the value element
    geom = gis_models.GeometryField()  # Use GeometryField to accommodate both point and area types

    def __str__(self):
        return f"{self.object_name} - {self.object_number}"
    
class ValuableTree(models.Model):
    image_filename = models.CharField(max_length=255, blank=True)
    file_identity = models.CharField(max_length=255, blank=True)
    file_link = models.URLField(max_length=200, blank=True)
    namespace = models.CharField(max_length=255, blank=True)
    object_delimitation_date = models.DateTimeField()
    extends_beyond_survey_area = models.BooleanField(default=False, blank=True)
    preliminary_delimitation_explanation = models.TextField(blank=True)
    invasive_species = models.TextField(blank=True)
    crown_diameter = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    object_description = models.TextField(blank=True)
    object_name = models.CharField(max_length=255, blank=True)
    object_number = models.CharField(max_length=255, blank=True, unique=True)
    object_version = models.IntegerField()
    preliminary_delimitation = models.BooleanField(default=False, blank=True)
    references = models.TextField(blank=True)
    trunk_circumference = models.DecimalField(max_digits=5, decimal_places=2)
    swedish_name = models.CharField(max_length=255, blank=True)
    scientific_name = models.CharField(max_length=255, blank=True)
    tree_status = models.CharField(max_length=255)
    tree_vitality = models.CharField(max_length=255)
    performer = models.CharField(max_length=255)
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)
    known_value_species = models.TextField(blank=True)
    observed_value_species = models.TextField(blank=True)
    action_needed = models.TextField(blank=True)

    # Spatial data for the valuable tree
    geom = gis_models.GeometryField()  # To handle both point and area geometries

    def __str__(self):
        return f"{self.object_name} - {self.object_number}"
    
class NaturalValueTree(ValuableTree):
    # If there are any additional fields specific to NaturalValueTree, they would be defined here.
    # For example:
    # additional_field = models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        # You might want to override the string representation for NaturalValueTree specifically.
        return f"Naturvärdesträd: {self.object_name} - {self.object_number}"

class GeneralProtectedHabitatArea(models.Model):
    # Image and File Reference Fields
    file_name = models.CharField(max_length=255, blank=True, null=True)
    file_reference_identity = models.CharField(max_length=255, blank=True, null=True)
    file_reference_link = models.URLField(max_length=1024, blank=True, null=True)
    file_reference_namespace = models.CharField(max_length=255, blank=True, null=True)

    # Date and Description Fields
    object_definition_date = models.DateTimeField()
    continues_outside_survey_area = models.BooleanField(default=False)
    preliminary_boundary_explanation = models.TextField(blank=True, null=True)
    invasive_species = models.TextField(blank=True, null=True)

    # Object Information
    object_description = models.TextField(blank=True, null=True)
    object_name = models.CharField(max_length=255, blank=True, null=True)
    object_number = models.CharField(max_length=255, unique=True)
    object_version = models.IntegerField()

    # Boundary and Reference Information
    preliminary_boundary = models.BooleanField(default=False)
    references = models.TextField(blank=True, null=True)
    habitat_area_type = models.CharField(max_length=255)  # Use choices if you have a predefined list of types.
    executor = models.CharField(max_length=255)

    # Version Validity
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)

    # Value Species Information
    species_known_before = models.TextField(blank=True, null=True)
    species_observed = models.TextField(blank=True, null=True)

    def __str__(self):
        return f"{self.object_name} ({self.object_number}) - {self.habitat_area_type}"

class Natura2000HabitatType(models.Model):
    # Image and File Reference Fields
    file_name = models.CharField(max_length=255, blank=True, null=True)
    file_reference_identity = models.CharField(max_length=255, blank=True, null=True)
    file_reference_link = models.URLField(max_length=1024, blank=True, null=True)
    file_reference_namespace = models.CharField(max_length=255, blank=True, null=True)

    # Date and Description Fields
    object_definition_date = models.DateTimeField()
    continues_outside_survey_area = models.BooleanField(default=False)
    preliminary_boundary_explanation = models.TextField(blank=True, null=True)
    invasive_species = models.TextField(blank=True, null=True)

    # Object Information
    object_description = models.TextField(blank=True, null=True)
    object_name = models.CharField(max_length=255, blank=True, null=True)
    object_number = models.CharField(max_length=255, unique=True)
    object_version = models.IntegerField()

    # Boundary and Reference Information
    preliminary_boundary = models.BooleanField(default=False)
    references = models.TextField(blank=True, null=True)
    executor = models.CharField(max_length=255)

    # Version Validity
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)

    # Value Species Information
    species_known_before = models.TextField(blank=True, null=True)
    species_observed = models.TextField(blank=True, null=True)

    def __str__(self):
        return f"{self.object_name} ({self.object_number})"

class OtherHabitat(models.Model):
    # Image and File Reference Fields
    file_name = models.CharField(max_length=255, blank=True, null=True)
    file_reference_identity = models.CharField(max_length=255, blank=True, null=True)
    file_reference_link = models.URLField(max_length=1024, blank=True, null=True)
    file_reference_namespace = models.CharField(max_length=255, blank=True, null=True)

    # Date and Boundary Fields
    object_definition_date = models.DateTimeField()
    continues_outside_survey_area = models.BooleanField(default=False)
    preliminary_boundary_explanation = models.TextField(blank=True, null=True)
    preliminary_value_class_explanation = models.TextField(blank=True, null=True)

    # Habitat Type and Code Fields
    hydromorphological_type = models.CharField(max_length=255, blank=True, null=True)
    hydromorphological_type_code = models.CharField(max_length=255, blank=True, null=True)
    invasive_species = models.TextField(blank=True, null=True)
    supplementary_habitat_type = models.CharField(max_length=255, blank=True, null=True)
    supplementary_habitat_type_code = models.CharField(max_length=255, blank=True, null=True)

    # Object Information
    nature_type = models.CharField(max_length=255)
    object_description = models.TextField(blank=True, null=True)
    object_name = models.CharField(max_length=255, blank=True, null=True)
    object_number = models.CharField(max_length=255, unique=True)
    object_version = models.IntegerField()

    # Boundary and Value Class Information
    preliminary_boundary = models.BooleanField(default=False)
    preliminary_value_class = models.BooleanField(default=False)
    references = models.TextField(blank=True, null=True)
    executor = models.CharField(max_length=255)

    # Version Validity
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)

    # Value Species and Other Value Class Information
    species_known_before = models.TextField(blank=True, null=True)
    species_observed = models.TextField(blank=True, null=True)
    other_value_class = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.object_name} ({self.object_number})"

    def get_absolute_url(self):
        return reverse('otherhabitat-detail', kwargs={'pk': self.pk})

'''
# INHERITENCE
# Base class for common habitat attributes
class HabitatBase(models.Model):
    file_name = models.CharField(max_length=255, blank=True, null=True)
    file_reference_identity = models.CharField(max_length=255, blank=True, null=True)
    file_reference_link = models.URLField(max_length=1024, blank=True, null=True)
    file_reference_namespace = models.CharField(max_length=255, blank=True, null=True)
    object_definition_date = models.DateTimeField()
    continues_outside_survey_area = models.BooleanField(default=False)
    preliminary_boundary_explanation = models.TextField(blank=True, null=True)
    invasive_species = models.TextField(blank=True, null=True)
    object_description = models.TextField(blank=True, null=True)
    object_name = models.CharField(max_length=255, blank=True, null=True)
    object_number = models.CharField(max_length=255, unique=True)
    object_version = models.IntegerField()
    preliminary_boundary = models.BooleanField(default=False)
    references = models.TextField(blank=True, null=True)
    executor = models.CharField(max_length=255)
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)
    species_known_before = models.TextField(blank=True, null=True)
    species_observed = models.TextField(blank=True, null=True)

    class Meta:
        abstract = True  # Indicates that this model will not be used to create any database table.

# Model for Nature Conservation Habitat
class NatureConservationHabitat(HabitatBase):
    species_values = models.TextField()
    habitat_values = models.TextField()
    preliminary_value_class_explanation = models.TextField(blank=True)
    hydromorphological_type = models.CharField(max_length=255, blank=True)
    hydrological_type_code = models.CharField(max_length=255, blank=True)
    supplementary_biotope_type = models.CharField(max_length=255, blank=True)
    supplementary_conservation_code = models.CharField(max_length=255, blank=True)
    nature_type = models.CharField(max_length=255)
    conservation_value_class = models.CharField(max_length=255)
    preliminary_value_class = models.BooleanField(default=False)
    geom = gis_models.PolygonField()  # Spatial data for the habitat area

    def __str__(self):
        return f"{self.object_name} - {self.object_number}"

# Model for Other Habitat
class OtherHabitat(HabitatBase):
    # OtherHabitat specific fields can be added here
    other_value_class = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.object_name} - {self.object_number}"
'''

class WatercourseSegment(models.Model):
    species_values = models.TextField("Artvärden", blank=False)  # krav indicates a required field
    image = models.ImageField("Bild", blank=True, upload_to='watercourse_segments/')
    file_name = models.CharField("Filnamn", max_length=255, blank=True)
    file_reference = models.TextField("Filreferens", blank=True)
    identity = models.CharField("Identitet", max_length=255, blank=True)
    link = models.URLField("Länk", max_length=200, blank=True)
    namespace = models.CharField("Namnrymd", max_length=255, blank=True)
    habitat_values = models.TextField("Biotopvärden", blank=False)
    object_boundary_date = models.DateTimeField("Datum för objektavgränsning", blank=False)
    continues_outside_survey_area = models.CharField("Fortsätter utanför inventeringsområde", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    preliminary_boundary_explanation = models.TextField("Förklaring till preliminär avgränsning", blank=True)
    preliminary_value_class_explanation = models.TextField("Förklaring till preliminär värdeklass", blank=True)
    hydromorphological_type = models.CharField("Hydromorfologisk typ", max_length=255, blank=False)
    hydromorphological_type_code = models.CharField("Hydromorfologisk typkod", max_length=255, blank=False)
    invasive_alien_species = models.TextField("Invasiva främmande arter", blank=True)
    supplementary_biotope_type = models.CharField("Kompletterande biotoptyp", max_length=255, blank=True)
    supplementary_biotope_type_code = models.CharField("Kompletterande biotoptypskod", max_length=255, blank=True)
    nature_type = models.CharField("Naturtyp", max_length=255, blank=True)
    conservation_value_class = models.CharField("Naturvärdesklass", max_length=255, blank=True)
    object_description = models.TextField("Objektbeskrivning", blank=True)
    object_name = models.CharField("Objektnamn", max_length=255, blank=True)
    object_number = models.CharField("Objektnummer", max_length=255, blank=True)
    object_version = models.IntegerField("Objektversion", blank=False)
    preliminary_boundary = models.CharField("Preliminär avgränsning", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    preliminary_value_class = models.CharField("Preliminär värdeklass", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    references = models.TextField("Referenser", blank=True)
    performer = models.TextField("Utförare", blank=False)
    valid_from = models.DateTimeField("Version giltig från", blank=False)
    valid_to = models.DateTimeField("Till", blank=True, null=True)  # lämnas tomt om avser senaste versionen
    known_species = models.TextField("Kända sedan tidigare", blank=True)
    observed_species = models.TextField("Observerade", blank=False)
    other_value_class = models.TextField("Övrig värdeklass", blank=True)

    def __str__(self):
        return f"{self.object_name} ({self.object_number})"
    
class SmallWaterBody(models.Model):
    species_values = models.TextField("Artvärden", blank=False)  # 'krav' indicates a required field
    image = models.ImageField("Bild", blank=True, upload_to='small_water_bodies/')
    file_name = models.CharField("Filnamn", max_length=255, blank=True)
    file_reference = models.TextField("Filreferens", blank=True)
    identity = models.CharField("Identitet", max_length=255, blank=True)
    link = models.URLField("Länk", max_length=200, blank=True)
    namespace = models.CharField("Namnrymd", max_length=255, blank=True)
    habitat_values = models.TextField("Biotopvärden", blank=False)
    object_boundary_date = models.DateTimeField("Datum för objektavgränsning", blank=False)
    continues_outside_survey_area = models.CharField("Fortsätter utanför inventeringsområde", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    preliminary_boundary_explanation = models.TextField("Förklaring till preliminär avgränsning", blank=True)
    preliminary_value_class_explanation = models.TextField("Förklaring till preliminär värdeklass", blank=False)  # 'krav' for preliminary value class explanation
    hydromorphological_type = models.CharField("Hydromorfologisk typ", max_length=255, blank=True)  # 'saknar relevans' might mean this field is not relevant
    hydromorphological_type_code = models.CharField("Hydromorfologisk typkod", max_length=255, blank=True)  # same as above
    invasive_alien_species = models.TextField("Invasiva främmande arter", blank=True)
    supplementary_biotope_type = models.CharField("Kompletterande biotoptyp", max_length=255, blank=True)
    supplementary_biotope_type_code = models.CharField("Kompletterande biotoptypskod", max_length=255, blank=True)
    nature_type = models.CharField("Naturtyp", max_length=255, blank=True)
    conservation_value_class = models.CharField("Naturvärdesklass", max_length=255, blank=True)
    object_description = models.TextField("Objektbeskrivning", blank=True)
    object_name = models.CharField("Objektnamn", max_length=255, blank=True)
    object_number = models.CharField("Objektnummer", max_length=255, blank=True)
    object_version = models.IntegerField("Objektversion", blank=False)
    preliminary_boundary = models.CharField("Preliminär avgränsning", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    preliminary_value_class = models.CharField("Preliminär värdeklass", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=False)  # 'krav' for preliminary value class
    references = models.TextField("Referenser", blank=True)
    performer = models.TextField("Utförare", blank=False)
    valid_from = models.DateTimeField("Version giltig från", blank=False)
    valid_to = models.DateTimeField("Till", blank=True, null=True)  # 'lämnas tomt om avser senaste versionen'
    known_species = models.TextField("Kända sedan tidigare", blank=True)
    observed_species = models.TextField("Observerade", blank=True)  # 'tillägg' indicates an optional field
    other_value_class = models.TextField("Övrig värdeklass", blank=False)  # 'krav' if the water body doesn't meet minimum conservation class 4

    def __str__(self):
        return f"{self.object_name} ({self.object_number})"
    
class BottomEnvironment(models.Model):
    species_values = models.TextField("Artvärden", blank=False)  # 'krav' indicates a required field
    image = models.ImageField("Bild", blank=True, upload_to='bottom_environments/')
    file_name = models.CharField("Filnamn", max_length=255, blank=True)
    file_reference = models.TextField("Filreferens", blank=True)
    identity = models.CharField("Identitet", max_length=255, blank=True)
    link = models.URLField("Länk", max_length=200, blank=True)
    namespace = models.CharField("Namnrymd", max_length=255, blank=True)
    habitat_values = models.TextField("Biotopvärden", blank=False)
    object_boundary_date = models.DateTimeField("Datum för objektavgränsning", blank=False)
    continues_outside_survey_area = models.CharField("Fortsätter utanför inventeringsområde", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    preliminary_boundary_explanation = models.TextField("Förklaring till preliminär avgränsning", blank=True)
    preliminary_value_class_explanation = models.TextField("Förklaring till preliminär värdeklass", blank=False)  # 'krav' for preliminary value class explanation
    hydromorphological_type = models.CharField("Hydromorfologisk typ", max_length=255, blank=False)  # 'krav' indicates required for watercourses
    hydromorphological_type_code = models.CharField("Hydromorfologisk typkod", max_length=255, blank=False)
    invasive_alien_species = models.TextField("Invasiva främmande arter", blank=True)
    supplementary_biotope_type = models.CharField("Kompletterande biotoptyp", max_length=255, blank=True)
    supplementary_biotope_type_code = models.CharField("Kompletterande biotoptypskod", max_length=255, blank=True)
    nature_type = models.CharField("Naturtyp", max_length=255, blank=True)
    conservation_value_class = models.CharField("Naturvärdesklass", max_length=255, blank=True)
    object_description = models.TextField("Objektbeskrivning", blank=True)
    object_name = models.CharField("Objektnamn", max_length=255, blank=True)
    object_number = models.CharField("Objektnummer", max_length=255, blank=True)
    object_version = models.IntegerField("Objektversion", blank=False)
    preliminary_boundary = models.CharField("Preliminär avgränsning", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=True)
    preliminary_value_class = models.CharField("Preliminär värdeklass", max_length=3, choices=[('JA', 'Ja'), ('NEJ', 'Nej')], blank=False)  # 'krav' for preliminary value class
    references = models.TextField("Referenser", blank=True)
    performer = models.TextField("Utförare", blank=False)
    valid_from = models.DateTimeField("Version giltig från", blank=False)
    valid_to = models.DateTimeField("Till", blank=True, null=True)  # 'lämnas tomt om avser senaste versionen'
    known_species = models.TextField("Kända sedan tidigare", blank=True)
    observed_species = models.TextField("Observerade", blank=False)  # 'krav' for observed species
    other_value_class = models.TextField("Övrig värdeklass", blank=False)  # 'krav' if the bottom environment doesn't meet minimum conservation class 4

    def __str__(self):
        return f"{self.object_name} ({self.object_number})"
    
class SpeciesOccurrence(models.Model):
    # Image and File Reference Fields
    file_name = models.CharField(max_length=255, blank=True, null=True)
    file_reference_identity = models.CharField(max_length=255, blank=True, null=True)
    file_reference_link = models.URLField(max_length=1024, blank=True, null=True)
    file_reference_namespace = models.CharField(max_length=255, blank=True, null=True)

    # Date and Boundary Fields
    object_definition_date = models.DateTimeField()
    continues_outside_survey_area = models.BooleanField(default=False)
    preliminary_boundary_explanation = models.TextField(blank=True, null=True)
    
    # Species Quantification and Description Fields
    quantification = models.CharField(max_length=255, blank=True, null=True)  # Assuming a predefined list of quantification methods
    alternative_to_quantification = models.CharField(max_length=255, blank=True, null=True)
    invasive_species = models.CharField(max_length=255, default="ej tillämpbart")
    
    # Object Information Fields
    object_description = models.TextField(blank=True, null=True)
    object_name = models.CharField(max_length=255, blank=True, null=True)
    object_number = models.CharField(max_length=255, blank=True, null=True)
    object_version = models.IntegerField()
    preliminary_boundary = models.BooleanField(default=False)
    references = models.TextField(blank=True, null=True)
    
    # Taxon Fields
    swedish_name = models.CharField(max_length=255)
    scientific_name = models.CharField(max_length=255)
    
    # Executor and Version Validity Fields
    executor = models.CharField(max_length=255)
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)
    
    # Value Species Information Fields
    species_known_before = models.CharField(max_length=255, default="ej tillämpbart")
    species_observed = models.CharField(max_length=255, default="ej tillämpbart")

    def __str__(self):
        return f"{self.object_name} ({self.object_number}) - {self.swedish_name} / {self.scientific_name}"
    
class Habitat(models.Model):
    # Image and File Reference Fields
    file_name = models.CharField(max_length=255, blank=True, null=True)
    file_reference_identity = models.CharField(max_length=255, blank=True, null=True)
    file_reference_link = models.URLField(max_length=1024, blank=True, null=True)
    file_reference_namespace = models.CharField(max_length=255, blank=True, null=True)

    # Date and Boundary Fields
    object_definition_date = models.DateTimeField()
    continues_outside_survey_area = models.BooleanField(default=False)
    preliminary_boundary_explanation = models.TextField(blank=True, null=True)

    # Habitat Suitability Fields
    habitat_suitability = models.CharField(max_length=255, blank=True, null=True)  # Assuming a predefined list of suitability levels
    alternative_to_habitat_suitability = models.CharField(max_length=255, blank=True, null=True)
    invasive_species = models.CharField(max_length=255, default="ej tillämpbart")

    # Object Information Fields
    object_description = models.TextField()
    object_name = models.CharField(max_length=255, blank=True, null=True)
    object_number = models.CharField(max_length=255, blank=True, null=True)
    object_version = models.IntegerField()
    preliminary_boundary = models.BooleanField(default=False)
    references = models.TextField(blank=True, null=True)

    # Taxon Fields
    swedish_name = models.CharField(max_length=255)
    scientific_name = models.CharField(max_length=255)

    # Executor and Version Validity Fields
    executor = models.CharField(max_length=255)
    valid_from = models.DateTimeField()
    valid_to = models.DateTimeField(blank=True, null=True)

    # Value Species Information Fields
    species_known_before = models.CharField(max_length=255, default="ej tillämpbart")
    species_observed = models.CharField(max_length=255, default="ej tillämpbart")

    def __str__(self):
        return f"{self.object_name} ({self.object_number}) - Habitat"
    



