from rest_framework import serializers
from species_app_vm.models import SpeciesCentralDatabank, SpeciesUserDatabank

class SpeciesCentralDatabankSerializer(serializers.ModelSerializer):
    class Meta:
        model = SpeciesCentralDatabank
        fields = ['taxon_id', 'species_name_common', 'latin_name', 'species_data', 'last_update_date', 'source']

class SpeciesUserDatabankSerializer(serializers.ModelSerializer):
    """
    Serializer for SpeciesUserDatabank model.
    """
    class Meta:
        model = SpeciesUserDatabank
        fields = ['taxon_id', 'species_name_common', 'latin_name', 'species_data', 'last_update_date', 'source', 'user']
