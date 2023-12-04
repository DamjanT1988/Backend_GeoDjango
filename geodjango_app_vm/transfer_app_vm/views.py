from django.shortcuts import render

# Create your views here.
from rest_framework import generics, permissions
from project_app_vm.models import Project
from project_app_vm.serializers import ProjectSerializer


class ProjectTransferView(generics.RetrieveUpdateAPIView, generics.CreateAPIView):
    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        # Assuming the ProjectSerializer is set up to include related GIS data
        return Project.objects.prefetch_related('polygon_data', 'line_data', 'point_data')


"""
class ProjectTransferView(generics.RetrieveAPIView):
    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        # Assuming the ProjectSerializer is set up to include related GIS data
        return Project.objects.prefetch_related('polygon_data', 'line_data', 'point_data')


class ProjectTransferView(generics.RetrieveUpdateAPIView):
    queryset = Project.objects.prefetch_related('polygon_data', 'line_data', 'point_data')
    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

    # No need to define get_queryset() as queryset class variable is used
"""