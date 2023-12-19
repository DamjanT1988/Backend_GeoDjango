from django.shortcuts import render
from rest_framework import generics, permissions
from project_app_vm.models import Project
from project_app_vm.serializers import ProjectSerializer


class ProjectTransferView(generics.RetrieveUpdateAPIView, generics.CreateAPIView):
    """
    API view for transferring projects.

    This view allows authenticated users to retrieve, update, and create projects.
    The ProjectSerializer is used for serialization and deserialization of project data.
    The permission_classes attribute is set to [permissions.IsAuthenticated] to ensure only authenticated users can access the view.
    """

    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        # Assuming the ProjectSerializer is set up to include related GIS data
        return Project.objects.prefetch_related('polygon_data', 'line_data', 'point_data')
