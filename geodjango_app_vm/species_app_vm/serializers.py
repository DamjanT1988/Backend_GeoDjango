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
        fields = ['taxon_id', 'species_name_common', 'latin_name', 'species_data', 'source', 'user']
        extra_kwargs = {
            'user': {'read_only': True},
            'taxon_id': {'required': False},
            'species_name_common': {'required': False},
            'latin_name': {'required': False},
            'species_data': {'required': False},
            'source': {'required': False}
        }
