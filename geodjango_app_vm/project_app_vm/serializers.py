from rest_framework import serializers
from rest_framework_gis.serializers import GeoFeatureModelSerializer
from project_app_vm.models import Project, PolygonData, LineData, PointData

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


class ProjectSerializer(serializers.ModelSerializer):
    polygon_data = PolygonDataSerializer(many=True, required=False)
    line_data = LineDataSerializer(many=True, required=False)
    point_data = PointDataSerializer(many=True, required=False)

    class Meta:
        model = Project
        fields = '__all__'

    def create(self, validated_data):
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

"""
class ProjectSerializer(serializers.ModelSerializer):
    polygon_data = PolygonDataSerializer(many=True, required=False)
    line_data = LineDataSerializer(many=True, required=False)
    point_data = PointDataSerializer(many=True, required=False)

    class Meta:
        model = Project
        fields = ['id', 'project_name', 'description', 'creation_date', 'last_update_date', 'user', 'polygon_data', 'line_data', 'point_data']

    def create(self, validated_data):
        polygon_data = validated_data.pop('polygon_data', [])
        line_data = validated_data.pop('line_data', [])
        point_data = validated_data.pop('point_data', [])
        project = Project.objects.create(**validated_data)

        for poly_data in polygon_data:
            PolygonData.objects.create(project=project, **poly_data)

        for line in line_data:
            LineData.objects.create(project=project, **line)

        for point in point_data:
            PointData.objects.create(project=project, **point)

        return project
"""