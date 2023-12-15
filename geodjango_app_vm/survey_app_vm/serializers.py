from rest_framework import serializers
from survey_app_vm.models import *

# OTHER Serializers
class Group_naturvardestradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_naturvardestrad
        fields = '__all__'

class Group_vardeelementSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_vardeelement
        fields = '__all__'

class Group_natura2000Serializer(serializers.ModelSerializer):
    class Meta:
        model = Group_natura2000
        fields = '__all__'

class Group_hydromorfologiskSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_hydromorfologisk
        fields = '__all__'

class Group_livsmiljo_gradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_livsmiljo_grad
        fields = '__all__'

class Group_kvant_artforekomstSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_kvant_artforekomst
        fields = '__all__'

class Group_kartlaggningstypSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_kartlaggningstyp
        fields = '__all__'

class Group_naturvardesklassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group_naturvardesklass
        fields = '__all__'

class Gamla_grovatrad_haltradSerializer(serializers.ModelSerializer):
    class Meta:
        model = Gamla_grovatrad_haltrad
        fields = '__all__'

class Hogstubbar_lagorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hogstubbar_lagor
        fields = '__all__'

class VaxtsattSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vaxtsatt
        fields = '__all__'

class Ekologisk_funktionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ekologisk_funktion
        fields = '__all__'

class Element_strukturerSerializer(serializers.ModelSerializer):
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

class Berg_stenSerializer(serializers.ModelSerializer):
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

class StrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Strand
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

class Kust_havSerializer(serializers.ModelSerializer):
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

class Berg_substratmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Berg_substratmark
        fields = '__all__'

class SkogSerializer(serializers.ModelSerializer):
    class Meta:
        model = Skog
        fields = '__all__'

class Ovrigt_2Serializer(serializers.ModelSerializer):
    class Meta:
        model = Ovrigt_2
        fields = '__all__'

class Ovrigt_forstudierSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ovrigt_forstudier
        fields = '__all__'

class Values_hydroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_hydro
        fields = '__all__'

class Values_livsmiljoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_livsmiljo
        fields = '__all__'

class Values_kvant_artforekomstSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_kvant_artforekomst
        fields = '__all__'

class Values_kartlaggningstypSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_kartlaggningstyp
        fields = '__all__'

class Values_naturvardesklassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_naturvardesklass
        fields = '__all__'

### NATURE - MARK ###
class Ecosystem_category_mark_natSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_mark_nat
        fields = '__all__'

class KalfjallSerializer(serializers.ModelSerializer):
    class Meta:
        model = Kalfjall
        fields = '__all__'

class Berg_och_stenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Berg_och_sten
        fields = '__all__'

class Naturligt_bar_jordSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturligt_bar_jord
        fields = '__all__'

class Naturlig_grasmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturlig_grasmark
        fields = '__all__'

class Skog_buskmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Skog_buskmark
        fields = '__all__'

class Myr_markSerializer(serializers.ModelSerializer):
    class Meta:
        model = Myr_mark
        fields = '__all__'

class Ecosystem_category_mark_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_mark_ant
        fields = '__all__'

class Values_mark_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_mark_ant
        fields = '__all__'




# NATURE MARK Serializers

class Ecosystem_category_mark_natSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_mark_nat
        fields = '__all__'

class KalfjallSerializer(serializers.ModelSerializer):
    class Meta:
        model = Kalfjall
        fields = '__all__'

class Berg_och_stenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Berg_och_sten
        fields = '__all__'

class Naturligt_bar_jordSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturligt_bar_jord
        fields = '__all__'

class Naturlig_grasmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturlig_grasmark
        fields = '__all__'

class Skog_buskmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Skog_buskmark
        fields = '__all__'

class Myr_markSerializer(serializers.ModelSerializer):
    class Meta:
        model = Myr_mark
        fields = '__all__'

class Ecosystem_category_mark_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_mark_ant
        fields = '__all__'

class Values_mark_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_mark_ant
        fields = '__all__'

class Ecosystem_category_mark_natSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_mark_nat
        fields = '__all__'

class KalfjallSerializer(serializers.ModelSerializer):
    class Meta:
        model = Kalfjall
        fields = '__all__'

class Berg_och_stenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Berg_och_sten
        fields = '__all__'

class Naturligt_bar_jordSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturligt_bar_jord
        fields = '__all__'

class Naturlig_grasmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturlig_grasmark
        fields = '__all__'

class Skog_buskmarkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Skog_buskmark
        fields = '__all__'

class Myr_markSerializer(serializers.ModelSerializer):
    class Meta:
        model = Myr_mark
        fields = '__all__'

class Ecosystem_category_mark_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_mark_ant
        fields = '__all__'

class Values_mark_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_mark_ant
        fields = '__all__'




# NATURE SÖTVATTEN Serializers

class Ecosystem_category_sotv_natSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_sotv_nat
        fields = '__all__'

class SjoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sjo
        fields = '__all__'

class Naturliga_smavattenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Naturliga_smavatten
        fields = '__all__'

class VattendragSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vattendrag
        fields = '__all__'

class Ecosystem_category_sotv_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_sotv_ant
        fields = '__all__'

class Values_sotv_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_sotv_ant
        fields = '__all__'




# NATURE HAV Serializers

class Ecosystem_category_hav_natSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_hav_nat
        fields = '__all__'

class Marint_ostersjonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Marint_ostersjon
        fields = '__all__'

class Marint_atlantisktSerializer(serializers.ModelSerializer):
    class Meta:
        model = Marint_atlantiskt
        fields = '__all__'

class Ecosystem_category_hav_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ecosystem_category_hav_ant
        fields = '__all__'

class Values_hav_antSerializer(serializers.ModelSerializer):
    class Meta:
        model = Values_hav_ant
        fields = '__all__'

class Biotop_otherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Biotop_other
        fields = '__all__'
