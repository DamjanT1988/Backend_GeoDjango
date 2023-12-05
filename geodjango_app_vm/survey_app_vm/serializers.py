from rest_framework import serializers
from survey_app_vm.models import *

class GroupNaturvardestradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_naturvardestrad
        fields = '__all__'

class GroupVardeelementSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_vardeelement
        fields = '__all__'

class GroupNatura2000Serializer(serializers.ModelSerializer):
    class Meta:
        model = Group_natura2000
        fields = '__all__'

class GroupHydromorfologiskSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_hydromorfologisk
        fields = '__all__'

class GroupLivsmiljoGradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_livsmiljo_grad
        fields = '__all__'

class GroupKvantArtforekomstSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_kvant_artforekomst
        fields = '__all__'

class GroupKartlaggningstypSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_kartlaggningstyp
        fields = '__all__'

class GroupNaturvardesklassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_naturvardesklass
        fields = '__all__'

class GamlaGrovatradHaltradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Gamla_grovatrad_haltrad
        fields = '__all__'

class HogstubbarLagorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hogstubbar_lagor
        fields = '__all__'

class VaxtsattSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vaxtsatt
        fields = '__all__'

class EkologiskFunktionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ekologisk_funktion
        fields = '__all__'

class ElementStrukturerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Element_strukturer
        fields = '__all__'

class ArtforekomstSerializer(serializers.ModelSerializer):
    class Meta:
        model = Artforekomst
        fields = '__all__'

class AnnatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Annat
        fields = '__all__'

class BergStenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Berg_sten
        fields = '__all__'

class BlommorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Blommor
        fields = '__all__'

class BuskarSerializer(serializers.ModelSerializer):
    class Meta:
        model = Buskar
        fields = '__all__'

class JordSerializer(serializers.ModelSerializer):
    class Meta:
        model = Jord
        fields = '__all__'

class KulturlandskapSerializer(serializers.ModelSerializer):
    class Meta:
        model = Kulturlandskap
        fields = '__all__'

class MyrSerializer(serializers.ModelSerializer):
    class Meta:
        model = Myr
        fields = '__all__'

class TradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Trad
        fields = '__all__'

class VattenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vatten
        fields = '__all__'

class OvrigtSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ovrigt
        fields = '__all__'

class KustHavSerializer(serializers.ModelSerializer):
    class Meta:
        model = Kust_hav
        fields = '__all__'

class DynerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dyner
        fields = '__all__'

class SotvattenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sotvatten
        fields = '__all__'

class GrasmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Grasmark
        fields = '__all__'

class MyrerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Myrer
        fields = '__all__'

class BergSubstratmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Berg_substratmark
        fields = '__all__'

class SkogSerializer(serializers.ModelSerializer):
    class Meta:
        model = Skog
        fields = '__all__'

class Ovrigt2Serializer(serializers.ModelSerializer):
    class Meta:
        model = Ovrigt_2
        fields = '__all__'

class OvrigtForstudierSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ovrigt_forstudier
        fields = '__all__'

class ValuesHydroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_hydro
        fields = '__all__'

class ValuesLivsmiljoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_livsmiljo
        fields = '__all__'

class ValuesKvantArtforekomstSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_kvant_artforekomst
        fields = '__all__'

class ValuesKartlaggningstypSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_kartlaggningstyp
        fields = '__all__'

class ValuesNaturvardesklassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_naturvardesklass
        fields = '__all__'