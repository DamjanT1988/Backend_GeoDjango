from rest_framework_gis.serializers import GeoFeatureModelSerializer
from filecreation_app_vm.models import GeospatialData

class GeospatialDataSerializer(GeoFeatureModelSerializer):
    class Meta:
        model = GeospatialData
        geo_field = 'geom'
        fields = '__all__'
