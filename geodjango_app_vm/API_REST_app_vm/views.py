from rest_framework import generics
from species_app_vm.models import SpeciesCentralDatabank, SpeciesUserDatabank
from API_REST_app_vm.serializers import SpeciesCentralDatabankSerializer, SpeciesUserDatabankSerializer
from rest_framework.permissions import IsAuthenticated

class SpeciesCentralDatabankList(generics.ListAPIView):
    queryset = SpeciesCentralDatabank.objects.all()
    serializer_class = SpeciesCentralDatabankSerializer
    permission_classes = [IsAuthenticated]

class SpeciesUserDatabankList(generics.ListAPIView):
    serializer_class = SpeciesUserDatabankSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        """
        This view should return a list of all records for
        the currently authenticated user.
        """
        user = self.request.user
        return SpeciesUserDatabank.objects.filter(user=user)
