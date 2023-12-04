from django.db import models
from django.contrib.gis.db import models as gis_models
from django.contrib.auth.models import User

class Project(models.Model):
    project_name = models.CharField(max_length=255)
    description = models.TextField()
    creation_date = models.DateTimeField(auto_now_add=True)
    last_update_date = models.DateTimeField(auto_now=True)  # Use auto_now for last updated time
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.project_name

class GISData(models.Model):
    # Common fields for all GIS data models
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

class LineData(GISData):
    geo_data = gis_models.LineStringField()

class PointData(GISData):
    geo_data = gis_models.PointField()
    attributes = gis_models.JSONField()  # Specific to PointData