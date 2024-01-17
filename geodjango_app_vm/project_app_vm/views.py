import os, json
from rest_framework import generics, permissions, status
from django.http import JsonResponse, HttpResponse
from django.conf import settings
from rest_framework.decorators import api_view
from rest_framework.response import Response
from project_app_vm.models import Project, PolygonData, LineData, PointData, GeoJSONFile
from project_app_vm.serializers import ProjectSerializer, PolygonDataSerializer, LineDataSerializer, PointDataSerializer

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
