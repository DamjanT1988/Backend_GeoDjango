from django.http import HttpResponse, JsonResponse
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
import os


class GeoJSONAPIView(APIView):
    parser_classes = [JSONParser]

    def post(self, request, *args, **kwargs):
        serializer = GeospatialDataSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()  # Saves the GeoJSON data into the database
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)


def download_shapefile(request, data_id):
    """
    Downloads a shapefile based on the given data_id.

    Args:
        request (HttpRequest): The HTTP request object.
        data_id (int): The ID of the GeospatialData object.

    Returns:
        HttpResponse: The HTTP response object containing the shapefile as a zip file.
    """
    data = GeospatialData.objects.get(id=data_id)
    geojson = data.geom.geojson
    geos_geom = GEOSGeometry(geojson)

    # Rest of the code...
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


def download_geopackfile(request, data_id):
    # Fetch the data from the database
    data = GeospatialData.objects.get(id=data_id)
    geojson = data.geom.geojson
    geos_geom = GEOSGeometry(geojson)

    # Convert the GeoJSON string to a Python dictionary
    geometry = json.loads(geos_geom.geojson)

    # Define schema for GeoPackage
    schema = {
        'geometry': 'Polygon',  # Adjust based on your data
        'properties': {
            'name': 'str',  # Assuming 'name' is a string field in your model
            #'category': 'str'  # Assuming 'category' is a string field in your model
        },
    }

    # Temporary directory for storing GeoPackage
    temp_dir = tempfile.mkdtemp()
    geopackage_path = os.path.join(temp_dir, 'data.gpkg')

    # Write the data to a GeoPackage
    with fiona.open(geopackage_path, 'w', driver='GPKG',
                    crs=from_epsg(4326),  # Replace with your data's CRS
                    schema=schema) as layer:
        layer.write({
            'geometry': geometry,
            'properties': {
                'name': data.name,  # Adjust field names based on your model
                #'category': data.category
            },
        })

    # Read the GeoPackage file and prepare it for download
    with open(geopackage_path, 'rb') as gpkg:
        response = HttpResponse(gpkg, content_type='application/octet-stream')
        response['Content-Disposition'] = 'attachment; filename="data.gpkg"'

    # Clean up the files from the filesystem
    os.remove(geopackage_path)
    os.rmdir(temp_dir)

    return response



def download_gmlfile(request, data_id):
    data = GeospatialData.objects.get(id=data_id)
    geojson = data.geom.geojson
    geos_geom = GEOSGeometry(geojson)
    geometry = json.loads(geos_geom.geojson)

    schema = {
        'geometry': 'Polygon',  # Adjust based on your data
        'properties': {
            'name': 'str',  # Assuming 'name' is a string field in your model
            #'category': 'str'  # Assuming 'category' is a string field in your model
        },
    }

    temp_dir = tempfile.mkdtemp()
    gml_path = os.path.join(temp_dir, 'data.gml')

    with fiona.open(gml_path, 'w', driver='GML',
                    crs=from_epsg(4326),  # Replace with your data's CRS
                    schema=schema) as layer:
        layer.write({
            'geometry': geometry,
            'properties': {
                'name': data.name,  # Adjust field names based on your model
                #'category': data.category
            },
        })

    # Create response outside of the 'with open' context to ensure the file is closed
    with open(gml_path, 'rb') as gml_file:
        gml_data = gml_file.read()

    response = HttpResponse(gml_data, content_type='application/gml+xml')
    response['Content-Disposition'] = 'attachment; filename="data.gml"'

    # Clean up files
    shutil.rmtree(temp_dir)  # Delete directory and all its contents

    return response

def download_geojsonfile(request, data_id):
    # Retrieve the geospatial data object from the database
    data = GeospatialData.objects.get(id=data_id)

    # Convert the data to GeoJSON
    geojson = data.geom.geojson

    # Create a response object with the GeoJSON content
    response = JsonResponse(geojson, safe=False)
    response['Content-Disposition'] = 'attachment; filename="data.geojson"'

    return response