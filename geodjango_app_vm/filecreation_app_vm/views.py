import os
from django.http import HttpResponse
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.parsers import JSONParser
from filecreation_app_vm.models import GeospatialData
from filecreation_app_vm.serializers import GeospatialDataSerializer
from django.contrib.gis.gdal import DataSource

class GeoJSONAPIView(APIView):
    parser_classes = [JSONParser]

    def post(self, request, *args, **kwargs):
        serializer = GeospatialDataSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()  # Saves the GeoJSON data into the database
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

def download_shapefile(request, data_id):
    data = GeospatialData.objects.get(id=data_id)
    ds = DataSource(data.geom.geojson)  # Convert GeoJSON to GDAL DataSource
    shapefile_path = '/tmp/data.shp'
    ds.copy(layer=0, name=shapefile_path, driver='ESRI Shapefile')
    with open(shapefile_path, 'rb') as shp:
        response = HttpResponse(shp, content_type='application/zip')
        response['Content-Disposition'] = 'attachment; filename="data.shp"'
        return response
    # Cleanup temporary files after serving them
    os.remove(shapefile_path)
    # Also remove .shx, .dbf, and .prj files
