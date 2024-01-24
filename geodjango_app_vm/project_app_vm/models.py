from django.db import models
from django.contrib.gis.db import models as gis_models
from django.contrib.auth.models import User
from django.db.models import JSONField

class Project(models.Model):
    project_name = models.CharField(max_length=255)
    description = models.TextField()
    creation_date = models.DateTimeField(auto_now_add=True)
    last_update_date = models.DateTimeField(auto_now=True)  # Use auto_now for last updated time
    user = models.ForeignKey(User, on_delete=models.CASCADE)

        # New fields based on the form data
    reason = models.CharField(max_length=255, blank=True, null=True)
    mapping_area_description = models.TextField(blank=True, null=True)
    ordering_organization = models.CharField(max_length=255, blank=True, null=True)
    object_version = models.CharField(max_length=50, blank=True, null=True)
    project_identity = models.CharField(max_length=255, blank=True, null=True)
    period_start = models.DateField(blank=True, null=True)
    period_end = models.DateField(blank=True, null=True)
    executing_organization = models.CharField(max_length=255, blank=True, null=True)
    version_start = models.DateField(blank=True, null=True)
    version_end = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.project_name

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