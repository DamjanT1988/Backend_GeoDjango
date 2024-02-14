import os, json
from rest_framework import generics, permissions, status
from django.http import JsonResponse, HttpResponse
from django.conf import settings
from rest_framework.decorators import api_view
from rest_framework.response import Response
from project_app_vm.models import Project, PolygonData, LineData, PointData, GeoJSONFile, ProjectImage
from project_app_vm.serializers import ProjectSerializer, PolygonDataSerializer, LineDataSerializer, PointDataSerializer
from django.views.decorators.csrf import csrf_exempt
from PIL import Image
from io import BytesIO
import base64
from django.core.files.base import ContentFile
from django.shortcuts import get_object_or_404

@api_view(['POST'])
def save_project_image(request):
    data = json.loads(request.body)
    project_id = data.get('projectId')
    image_data = data.get('imageData')
    map_object_id = data.get('mapObjectId', '')  # Get the map object ID from the request

    try:
        project = Project.objects.get(id=project_id)
    except Project.DoesNotExist:
        return Response({'error': 'Project not found'}, status=status.HTTP_404_NOT_FOUND)

    format, imgstr = image_data.split(';base64,') 
    ext = format.split('/')[-1]

    image = Image.open(BytesIO(base64.b64decode(imgstr)))
    temp_img = BytesIO()
    image.save(temp_img, format=image.format)
    temp_img.seek(0)

    # Create a new ProjectImage instance with the map_object_id
    project_image = ProjectImage(project=project, map_object_id=map_object_id)
    project_image.image.save(f"{project.project_name}_{map_object_id}.{ext}", ContentFile(temp_img.read()))  # Include map_object_id in the filename if needed
    temp_img.close()

    return Response({'status': 'success'}, status=status.HTTP_200_OK)

@api_view(['GET'])
def get_project_image(request, project_id):
    # Get all ProjectImage instances associated with the given project ID
    project_images = ProjectImage.objects.filter(project__id=project_id)
    
    if project_images.exists():
        image_data = [{
            'id': image.id,
            'url': request.build_absolute_uri(image.image.url),
            'caption': image.caption,
            'mapObjectId': image.map_object_id  # Include map object ID in the response
        } for image in project_images]

        return JsonResponse({'images': image_data}, safe=False, status=status.HTTP_200_OK)
    else:
        # If no images are found, return a 404 response
        return HttpResponse(status=status.HTTP_404_NOT_FOUND)
    
@api_view(['DELETE'])
def delete_project_image(request, image_id):
    """
    Delete an image from a project.

    Parameters:
    image_id (int): The ID of the image to be deleted.

    Returns:
    Response: A DRF Response object with a success status or an error message.
    """
    try:
        # Attempt to retrieve the image by its ID
        project_image = ProjectImage.objects.get(id=image_id)
    except ProjectImage.DoesNotExist:
        # If the image does not exist, return a 404 Not Found response
        return Response({'error': 'Image not found'}, status=status.HTTP_404_NOT_FOUND)

    # If the image exists, delete it
    project_image.image.delete()  # This deletes the image file
    project_image.delete()  # This deletes the database record

    # Return a success response
    return Response({'status': 'success'}, status=status.HTTP_204_NO_CONTENT)

@api_view(['POST'])
def save_geojson(request, userID, projectID):
    """
    file_path = os.path.join(settings.MEDIA_ROOT, f'{userID}/{projectID}/file.geojson')
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    with open(file_path, 'w') as file:
        json.dump(request.data, file)
    return JsonResponse({"status": "success"})
    """
    try:
        gis_data = GeoJSONFile.objects.get(project_id=projectID)
    except GeoJSONFile.DoesNotExist:
        gis_data = GeoJSONFile(project_id=projectID)
    
    gis_data.geojson_data = request.data
    gis_data.save()
    return JsonResponse({"status": "success"})

@api_view(['GET'])
def get_geojson(request, userID, projectID):
    try:
        gis_data = GeoJSONFile.objects.get(project_id=projectID)
        return JsonResponse(gis_data.geojson_data)
    except GeoJSONFile.DoesNotExist:
        return JsonResponse({"type": "FeatureCollection", "features": []})
    
    """
    file_path = os.path.join(settings.MEDIA_ROOT, f'{userID}/{projectID}/file.geojson')
    if not os.path.exists(file_path):
        return JsonResponse({"type": "FeatureCollection", "features": []})
    else:
        with open(file_path, 'r') as file:
            data = json.load(file)
            return JsonResponse(data)
    """

"""
@api_view(['POST'])
def add_polygon_data(request, project_id):
    try:
        project = Project.objects.get(id=project_id)
    except Project.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    serializer = PolygonDataSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save(project=project)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def add_line_data(request, project_id):
    try:
        project = Project.objects.get(id=project_id)
    except Project.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    serializer = LineDataSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save(project=project)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def add_point_data(request, project_id):
    try:
        project = Project.objects.get(id=project_id)
    except Project.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    serializer = PointDataSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save(project=project)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

"""


class ProjectListCreateView(generics.ListCreateAPIView):
    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        # Return only the projects for the current user
        return Project.objects.filter(user=self.request.user)

    def perform_create(self, serializer):
        # Override this method to add user to the project upon creation
        serializer.save(user=self.request.user)

class ProjectDetailView(generics.RetrieveUpdateDestroyAPIView):
    """
    A view for retrieving, updating, and deleting a project.

    This view requires authentication and uses the ProjectSerializer
    to serialize the project data. It also prefetches related GIS data
    (polygon_data, line_data, and point_data) to optimize performance.
    """

    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        # Prefetch related GIS data to optimize performance
        return Project.objects.prefetch_related('polygon_data', 'line_data', 'point_data')
