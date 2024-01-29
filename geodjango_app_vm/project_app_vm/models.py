from django.db import models
from django.contrib.gis.db import models as gis_models
from django.contrib.auth.models import User
from django.db.models import JSONField
import uuid


class Project(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    project_name = models.CharField(max_length=255)
    description = models.TextField()
    reason = models.CharField(max_length=255, blank=True, null=True)
    mapping_area_description = models.TextField(blank=True, null=True)
    
    # Fields for the ordering organization
    ordering_organization_name = models.CharField(max_length=255, blank=True, null=True)
    ordering_organization_number = models.CharField(max_length=50, blank=True, null=True)
    
    # Fields for the executing organization
    executing_organization_name = models.CharField(max_length=255, blank=True, null=True)
    executing_organization_number = models.CharField(max_length=50, blank=True, null=True)
    
    object_version = models.IntegerField(blank=True, null=True)
    project_identity = models.CharField(max_length=255, blank=True, null=True)
    
    period_start = models.DateField(blank=True, null=True)
    period_end = models.DateField(blank=True, null=True)
    
    version_start = models.DateField(blank=True, null=True)
    version_end = models.DateField(blank=True, null=True)

    creation_date = models.DateTimeField(auto_now_add=True)
    last_update_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.project_name} - {self.project_identity}"
    

class MappingInformation(models.Model):
    limitations_uncertainties = models.TextField('Begränsningar och osäkerheter', blank=True)
    methods_scope = models.TextField('Metoder och omfattning', blank=True)
    minimum_mapping_unit = models.TextField('Minsta karteringsenhet', blank=False)
    mapping_type = models.CharField('Typ av kartläggning', max_length=255, blank=False)

    def __str__(self):
        return f"Mapping Information: {self.mapping_type}"

class ReferenceMaterial(models.Model):
    date = models.DateTimeField('Datum', blank=False)
    source = models.CharField('Källa', max_length=255, blank=False)
    object_identity = models.CharField('Objektidentitet', max_length=255, blank=False)
    object_version = models.IntegerField('Objektversion', blank=False)
    reference_date = models.DateTimeField('Datum', blank=True, null=True)
    event_date = models.DateTimeField('Händelse', blank=True, null=True)
    short_name = models.CharField('Kortnamn', max_length=255, blank=True)
    name = models.CharField('Namn', max_length=255, blank=True)
    reference_identity = models.UUIDField('Identitet', default=uuid.uuid4, editable=False, blank=True)
    link = models.URLField('Länk', max_length=200, blank=True)
    namespace = models.CharField('Namnrymd', max_length=255, blank=True)
    specific_reference = models.TextField('Specifik referens', blank=True)
    valid_from = models.DateTimeField('Version giltig från', blank=False)
    valid_to = models.DateTimeField('Version giltig till', blank=False)

    def __str__(self):
        return f"Reference Material: {self.source} - {self.object_identity}"


class GeoJSONFile (models.Model):
    file_name = models.CharField(max_length=255, blank=True, null=True)
    geojson_data = JSONField(blank=True, null=True)  # Field to store GeoJSON data
    project = models.ForeignKey(Project, on_delete=models.CASCADE)

    def __str__(self):
        return self.file_name

class GISData(models.Model):
    """
    Represents GIS data with common fields for all GIS data models.

    Attributes:
        name (str): The name of the GIS data.
        description (str): The description of the GIS data.
        start_date (date): The start date of the GIS data.
        end_date (date): The end date of the GIS data.
        status (str): The status of the GIS data.
        accuracy (Decimal): The accuracy of the GIS data.
        image_url (str): The URL of the image associated with the GIS data.
        notes (str): Additional notes about the GIS data.
        project (Project): The project associated with the GIS data.
    """

    name = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    status = models.CharField(max_length=100)
    accuracy = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    image_url = models.URLField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    project = models.ForeignKey(Project, on_delete=models.CASCADE)

    class Meta:
        abstract = True  # Make this an abstract base class

class PolygonData(GISData):
    geo_data = gis_models.PolygonField()
    project = models.ForeignKey(Project, related_name='polygon_data', on_delete=models.CASCADE)

class LineData(GISData):
    geo_data = gis_models.LineStringField()
    project = models.ForeignKey(Project, related_name='line_data', on_delete=models.CASCADE)

class PointData(GISData):
    geo_data = gis_models.PointField()
    attributes = gis_models.JSONField()  # Specific to PointData
    project = models.ForeignKey(Project, related_name='point_data', on_delete=models.CASCADE)