from rest_framework import serializers
from rest_framework_gis.serializers import GeoFeatureModelSerializer
from project_app_vm.models import Project, PolygonData, LineData, PointData, ProjectInformation, ProjectImage
import base64
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from PIL import Image
from io import BytesIO
import json

class PolygonDataSerializer(GeoFeatureModelSerializer):
    class Meta:
        model = PolygonData
        geo_field = "geo_data"
        fields = '__all__'
        read_only_fields = ('project',)

class LineDataSerializer(GeoFeatureModelSerializer):
    class Meta:
        model = LineData
        geo_field = "geo_data"
        fields = '__all__'
        read_only_fields = ('project',)

class PointDataSerializer(GeoFeatureModelSerializer):
    class Meta:
        model = PointData
        geo_field = "geo_data"
        fields = '__all__'
        read_only_fields = ('project',)

class ProjectInformationSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectInformation
        fields = '__all__'


class ProjectSerializer(serializers.ModelSerializer):
    project_information = ProjectInformationSerializer(required=False)

    """
    Serializer for the Project model.

    This serializer is responsible for serializing and deserializing Project instances.
    It also handles the creation and updating of related GIS data.

    Attributes:
        polygon_data (PolygonDataSerializer): Serializer for polygon data.
        line_data (LineDataSerializer): Serializer for line data.
        point_data (PointDataSerializer): Serializer for point data.
    """
    '''
    polygon_data = PolygonDataSerializer(many=True, required=False)
    line_data = LineDataSerializer(many=True, required=False)
    point_data = PointDataSerializer(many=True, required=False)
    '''

    class Meta:
        model = Project
        fields = [
            'id',
            'user',
            'project_name',
            'description',
            'reason',
            'mapping_area_description',
            'ordering_organization_name',
            'ordering_organization_number',
            'executing_organization_name',
            'executing_organization_number',
            'object_version',
            'project_identity',
            'period_start',
            'period_end',
            'version_start',
            'version_end',
            'creation_date',
            'last_update_date',
            'project_information',
            'saved_object_ids',
        ]
        read_only_fields = ('user', 'creation_date', 'last_update_date')
        extra_kwargs = {
            'project_name': {'required': True},
            'description': {'required': True},
            'reason': {'required': False},
            'mapping_area_description': {'required': False},
            'ordering_organization_name': {'required': False},
            'ordering_organization_number': {'required': False},
            'executing_organization_name': {'required': False},
            'executing_organization_number': {'required': False},
            'object_version': {'required': False},
            'project_identity': {'required': False},
            'period_start': {'required': False},
            'period_end': {'required': False},
            'version_start': {'required': False},
            'version_end': {'required': False},
            'saved_object_ids': {'required': False}
        }

    def create(self, validated_data):
        """
        Create a new Project instance.

        Args:
            validated_data (dict): Validated data for the Project instance.

        Returns:
            Project: The created Project instance.
        """

        project_information_data = validated_data.pop('project_information', None)
        project = Project.objects.create(**validated_data)
        if project_information_data:
            ProjectInformation.objects.create(project=project, **project_information_data)

        # Extract GIS data from validated data
        polygon_data = validated_data.pop('polygon_data', [])
        line_data = validated_data.pop('line_data', [])
        point_data = validated_data.pop('point_data', [])
        # Create project instance
        project = Project.objects.create(**validated_data)
        # Create related GIS data
        for poly_data in polygon_data:
            PolygonData.objects.create(project=project, **poly_data)
        for line in line_data:
            LineData.objects.create(project=project, **line)
        for point in point_data:
            PointData.objects.create(project=project, **point)
        return project

    def update(self, instance, validated_data):
        """
        Update an existing Project instance.

        Args:
            instance (Project): The existing Project instance to be updated.
            validated_data (dict): Validated data for the update.

        Returns:
            Project: The updated Project instance.
        """

        project_information_data = validated_data.pop('project_information', None)
        # Update project instance fields...
        if project_information_data:
            ProjectInformation.objects.filter(project=instance).update(**project_information_data)

        # Extract GIS data from validated data
        polygon_data = validated_data.pop('polygon_data', None)
        line_data = validated_data.pop('line_data', None)
        point_data = validated_data.pop('point_data', None)
        # Update project instance fields
        for attr, value in validated_data.items():
            setattr(instance, attr, value)
        instance.save()
        # Update or create related GIS data
        # This is a simple example and might need to be adjusted based on your requirements
        if polygon_data is not None:
            for poly_data in polygon_data:
                poly_id = poly_data.get('id', None)
                if poly_id:
                    PolygonData.objects.filter(id=poly_id).update(**poly_data)
                else:
                    PolygonData.objects.create(project=instance, **poly_data)
        # Repeat similar logic for line_data and point_data
        return instance

    def delete(self, instance):
        """
        Delete an existing Project instance along with its related GIS data.

        Args:
            instance (Project): The Project instance to be deleted.
        """
        # Delete related GIS data
        PolygonData.objects.filter(project=instance).delete()
        LineData.objects.filter(project=instance).delete()
        PointData.objects.filter(project=instance).delete()

        # Delete the project instance
        instance.delete()
