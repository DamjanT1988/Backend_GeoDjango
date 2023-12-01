from rest_framework import generics
from species_app_vm.models import SpeciesCentralDatabank, SpeciesUserDatabank
from API_REST_app_vm.serializers import SpeciesCentralDatabankSerializer, SpeciesUserDatabankSerializer

class SpeciesCentralDatabankList(generics.ListAPIView):
    queryset = SpeciesCentralDatabank.objects.all()
    serializer_class = SpeciesCentralDatabankSerializer

class SpeciesUserDatabankList(generics.ListAPIView):
    queryset = SpeciesUserDatabank.objects.all()
    serializer_class = SpeciesUserDatabankSerializer
