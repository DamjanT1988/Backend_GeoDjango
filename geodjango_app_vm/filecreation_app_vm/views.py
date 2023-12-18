import os
from django.http import HttpResponse
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.parsers import JSONParser
from filecreation_app_vm.models import GeospatialData
from filecreation_app_vm.serializers import GeospatialDataSerializer
from django.contrib.gis.gdal import DataSource
from fiona.crs import from_epsg
from django.contrib.gis.geos import GEOSGeometry
import zipfile
import io
import fiona
import tempfile
import shutil
import json

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
    geojson = data.geom.geojson
    geos_geom = GEOSGeometry(geojson)

    # Convert the GeoJSON string to a Python dictionary
    geometry = json.loads(geos_geom.geojson)

    # Temporary directory for storing shapefile components
    temp_dir = tempfile.mkdtemp()

    # Define file path for the shapefile without the extension
    shapefile_base_name = 'data'
    shapefile_base_path = os.path.join(temp_dir, shapefile_base_name)

    # Define schema for shapefile
    schema = {
        'geometry': 'Polygon',
        'properties': {
            'name': 'str',
        },
    }

    # Write the GeoJSON to a shapefile
    with fiona.open(shapefile_base_path + '.shp', 'w', driver='ESRI Shapefile',
                    crs=from_epsg(4326),  # Replace with your data's CRS
                    schema=schema) as layer:
        layer.write({
            'geometry': geometry,  # Use the geojson property
            'properties': {
                'name': data.name,
            },
        })

    # Create a zip file in memory
    sio = io.BytesIO()
    with zipfile.ZipFile(sio, 'w') as zf:
        # Include all shapefile components in the zip file
        for extension in ['shp', 'shx', 'dbf', 'prj']:
            filename = f"{shapefile_base_path}.{extension}"
            zf.write(filename, os.path.basename(filename))

    # Clean up the files from the filesystem
    shutil.rmtree(temp_dir)  # Remove the temporary directory and all its contents

    # Set the pointer of the BytesIO object to the beginning
    sio.seek(0)
    
    # Create a Django response object, setting the correct content type and headers
    response = HttpResponse(sio, content_type='application/zip')
    response['Content-Disposition'] = 'attachment; filename="data.zip"'

    return response