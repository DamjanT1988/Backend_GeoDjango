from rest_framework import generics, permissions
from .models import Project
from .serializers import ProjectSerializer

class ProjectListCreateView(generics.ListCreateAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer
    permission_classes = [permissions.IsAuthenticated]

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
