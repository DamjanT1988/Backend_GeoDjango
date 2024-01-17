from rest_framework import generics
from species_app_vm.models import SpeciesCentralDatabank, SpeciesUserDatabank
from species_app_vm.serializers import SpeciesCentralDatabankSerializer, SpeciesUserDatabankSerializer
from rest_framework.permissions import IsAuthenticated

class SpeciesCentralDatabankList(generics.ListAPIView):
    queryset = SpeciesCentralDatabank.objects.all()
    serializer_class = SpeciesCentralDatabankSerializer
    permission_classes = [IsAuthenticated]

class SpeciesUserDatabankList(generics.ListAPIView):
    """
    A view that returns a list of records for the currently authenticated user.

    Inherits from `generics.ListAPIView` and uses the `SpeciesUserDatabankSerializer`
    for serialization. Requires authentication for access.

    Attributes:
        serializer_class (Serializer): The serializer class to use for serialization.
        permission_classes (list): The permission classes required for access.

    Methods:
        get_queryset(): Returns a queryset of records for the currently authenticated user.
    """
    serializer_class = SpeciesUserDatabankSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        """
        Returns a queryset of records for the currently authenticated user.

        Returns:
            QuerySet: A queryset of records filtered by the currently authenticated user.
        """
        user = self.request.user
        return SpeciesUserDatabank.objects.filter(user=user)

class SpeciesUserDatabankCreate(generics.CreateAPIView):
    queryset = SpeciesUserDatabank.objects.all()
    serializer_class = SpeciesUserDatabankSerializer
    permission_classes = [IsAuthenticated]

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)
