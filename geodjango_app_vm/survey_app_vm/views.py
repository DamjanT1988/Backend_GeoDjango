from rest_framework.views import APIView
from rest_framework import generics, status
from rest_framework.response import Response
from django.apps import apps
from survey_app_vm.models import *
from survey_app_vm.serializers import *

class DynamicListView(generics.ListCreateAPIView):
    def get_queryset(self):
        model_name = self.kwargs['model_name']
        try:
            model = apps.get_model('survey_app_vm', model_name)
        except LookupError:
            raise ValueError(f"Model '{model_name}' not found.")
        return model.objects.all()

    def get_serializer_class(self):
        model_name = self.kwargs['model_name']
        serializer_class_name = model_name + 'Serializer'
        try:
            return globals()[serializer_class_name]
        except KeyError:
            raise ValueError(f"Serializer for model '{model_name}' not found.")

    def list(self, request, *args, **kwargs):
        try:
            return super(DynamicListView, self).list(request, *args, **kwargs)
        except ValueError as e:
            return Response({'error': str(e)}, status=status.HTTP_400_BAD_REQUEST)

class AggregatedDataViewOther(APIView):
    def get(self, request, format=None):
        data = {}

        # Fetch and serialize data for each model
        data['group_naturvardestrad'] = Group_naturvardestradSerializer(Group_naturvardestrad.objects.all(), many=True).data
        data['gamla_grovatrad_haltrad'] = Gamla_grovatrad_haltradSerializer(Gamla_grovatrad_haltrad.objects.all(), many=True).data
        data['berg_sten'] = Berg_stenSerializer(Berg_sten.objects.all(), many=True).data
        data['hogstubbar_lagor'] = Hogstubbar_lagorSerializer(Hogstubbar_lagor.objects.all(), many=True).data
        data['vaxtsatt'] = VaxtsattSerializer(Vaxtsatt.objects.all(), many=True).data
        data['ekologisk_funktion'] = Ekologisk_funktionSerializer(Ekologisk_funktion.objects.all(), many=True).data
        data['element_strukturer'] = Element_strukturerSerializer(Element_strukturer.objects.all(), many=True).data
        data['artforekomst'] = ArtforekomstSerializer(Artforekomst.objects.all(), many=True).data
        data['annat'] = AnnatSerializer(Annat.objects.all(), many=True).data
        data['blommor'] = BlommorSerializer(Blommor.objects.all(), many=True).data
        data['buskar'] = BuskarSerializer(Buskar.objects.all(), many=True).data
        data['jord'] = JordSerializer(Jord.objects.all(), many=True).data
        data['kulturlandskap'] = KulturlandskapSerializer(Kulturlandskap.objects.all(), many=True).data
        data['myr'] = MyrSerializer(Myr.objects.all(), many=True).data
        data['trad'] = TradSerializer(Trad.objects.all(), many=True).data
        data['vatten'] = VattenSerializer(Vatten.objects.all(), many=True).data
        data['ovrigt'] = OvrigtSerializer(Ovrigt.objects.all(), many=True).data
        data['kust_hav'] = Kust_havSerializer(Kust_hav.objects.all(), many=True).data
        data['dyner'] = DynerSerializer(Dyner.objects.all(), many=True).data
        data['sotvatten'] = SotvattenSerializer(Sotvatten.objects.all(), many=True).data
        data['grasmark'] = GrasmarkSerializer(Grasmark.objects.all(), many=True).data
        data['myrer'] = MyrerSerializer(Myrer.objects.all(), many=True).data
        data['berg_substratmark'] = Berg_substratmarkSerializer(Berg_substratmark.objects.all(), many=True).data
        data['skog'] = SkogSerializer(Skog.objects.all(), many=True).data
        data['ovrigt_2'] = Ovrigt_2Serializer(Ovrigt_2.objects.all(), many=True).data
        data['ovrigt_forstudier'] = Ovrigt_forstudierSerializer(Ovrigt_forstudier.objects.all(), many=True).data
        data['values_hydro'] = Values_hydroSerializer(Values_hydro.objects.all(), many=True).data
        data['values_livsmiljo'] = Values_livsmiljoSerializer(Values_livsmiljo.objects.all(), many=True).data
        data['values_kvant_artforekomst'] = Values_kvant_artforekomstSerializer(Values_kvant_artforekomst.objects.all(), many=True).data
        data['values_kartlaggningstyp'] = Values_kartlaggningstypSerializer(Values_kartlaggningstyp.objects.all(), many=True).data
        data['values_naturvardesklass'] = Values_naturvardesklassSerializer(Values_naturvardesklass.objects.all(), many=True).data

        return Response(data)
    
class AggregatedDataViewMark(APIView):
    def get(self, request, format=None):
        data = {}

        # Fetch and serialize data for each Mark model
        data['ecosystem_category_mark_nat'] = Ecosystem_category_mark_natSerializer(Ecosystem_category_mark_nat.objects.all(), many=True).data
        data['kalfjall'] = KalfjallSerializer(Kalfjall.objects.all(), many=True).data
        data['berg_och_sten'] = Berg_och_stenSerializer(Berg_och_sten.objects.all(), many=True).data
        data['naturligt_bar_jord'] = Naturligt_bar_jordSerializer(Naturligt_bar_jord.objects.all(), many=True).data
        data['naturlig_grasmark'] = Naturlig_grasmarkSerializer(Naturlig_grasmark.objects.all(), many=True).data
        data['skog_buskmark'] = Skog_buskmarkSerializer(Skog_buskmark.objects.all(), many=True).data
        data['myr_mark'] = Myr_markSerializer(Myr_mark.objects.all(), many=True).data
        data['ecosystem_category_mark_ant'] = Ecosystem_category_mark_antSerializer(Ecosystem_category_mark_ant.objects.all(), many=True).data
        data['values_mark_ant'] = Values_mark_antSerializer(Values_mark_ant.objects.all(), many=True).data

        return Response(data)
    
class AggregatedDataViewSotvatten(APIView):
    def get(self, request, format=None):
        data = {}

        # Fetch and serialize data for each Sotvatten model
        data['ecosystem_category_sotv_nat'] = Ecosystem_category_sotv_natSerializer(Ecosystem_category_sotv_nat.objects.all(), many=True).data
        data['sjo'] = SjoSerializer(Sjo.objects.all(), many=True).data
        data['naturliga_smavatten'] = Naturliga_smavattenSerializer(Naturliga_smavatten.objects.all(), many=True).data
        data['vattendrag'] = VattendragSerializer(Vattendrag.objects.all(), many=True).data
        data['ecosystem_category_sotv_ant'] = Ecosystem_category_sotv_antSerializer(Ecosystem_category_sotv_ant.objects.all(), many=True).data
        data['values_sotv_ant'] = Values_sotv_antSerializer(Values_sotv_ant.objects.all(), many=True).data

        return Response(data)

class AggregatedDataViewHav(APIView):
    def get(self, request, format=None):
        data = {}

        # Fetch and serialize data for each Hav model
        data['ecosystem_category_hav_nat'] = Ecosystem_category_hav_natSerializer(Ecosystem_category_hav_nat.objects.all(), many=True).data
        data['marint_ostersjon'] = Marint_ostersjonSerializer(Marint_ostersjon.objects.all(), many=True).data
        data['marint_atlantiskt'] = Marint_atlantisktSerializer(Marint_atlantiskt.objects.all(), many=True).data
        data['ecosystem_category_hav_ant'] = Ecosystem_category_hav_antSerializer(Ecosystem_category_hav_ant.objects.all(), many=True).data
        data['values_hav_ant'] = Values_hav_antSerializer(Values_hav_ant.objects.all(), many=True).data
        data['biotop_other'] = Biotop_otherSerializer(Biotop_other.objects.all(), many=True).data

        return Response(data)
    
class AggregatedDataViewAll(APIView):
    def get(self, request, format=None):
        data = {}

        # Aggregate data from all categories
        data.update(self.get_other_data())
        data.update(self.get_mark_data())
        data.update(self.get_sotvatten_data())
        data.update(self.get_hav_data())

        return Response(data)

    def get_other_data(self):
        # Fetch and serialize data for each model in 'Other' category
        other_data = {
            'group_naturvardestrad': Group_naturvardestradSerializer(Group_naturvardestrad.objects.all(), many=True).data,
            'gamla_grovatrad_haltrad': Gamla_grovatrad_haltradSerializer(Gamla_grovatrad_haltrad.objects.all(), many=True).data,
            'berg_sten': Berg_stenSerializer(Berg_sten.objects.all(), many=True).data,
            'hogstubbar_lagor': Hogstubbar_lagorSerializer(Hogstubbar_lagor.objects.all(), many=True).data,
            'vaxtsatt': VaxtsattSerializer(Vaxtsatt.objects.all(), many=True).data,
            'ekologisk_funktion': Ekologisk_funktionSerializer(Ekologisk_funktion.objects.all(), many=True).data,
            'element_strukturer': Element_strukturerSerializer(Element_strukturer.objects.all(), many=True).data,
            'artforekomst': ArtforekomstSerializer(Artforekomst.objects.all(), many=True).data,
            'annat': AnnatSerializer(Annat.objects.all(), many=True).data,
            'blommor': BlommorSerializer(Blommor.objects.all(), many=True).data,
            'buskar': BuskarSerializer(Buskar.objects.all(), many=True).data,
            'jord': JordSerializer(Jord.objects.all(), many=True).data,
            'kulturlandskap': KulturlandskapSerializer(Kulturlandskap.objects.all(), many=True).data,
            'myr': MyrSerializer(Myr.objects.all(), many=True).data,
            'trad': TradSerializer(Trad.objects.all(), many=True).data,
            'vatten': VattenSerializer(Vatten.objects.all(), many=True).data,
            'ovrigt': OvrigtSerializer(Ovrigt.objects.all(), many=True).data,
            'kust_hav': Kust_havSerializer(Kust_hav.objects.all(), many=True).data,
            'dyner': DynerSerializer(Dyner.objects.all(), many=True).data,
            'sotvatten': SotvattenSerializer(Sotvatten.objects.all(), many=True).data,
            'grasmark': GrasmarkSerializer(Grasmark.objects.all(), many=True).data,
            'myrer': MyrerSerializer(Myrer.objects.all(), many=True).data,
            'berg_substratmark': Berg_substratmarkSerializer(Berg_substratmark.objects.all(), many=True).data,
            'skog': SkogSerializer(Skog.objects.all(), many=True).data,
            'ovrigt_2': Ovrigt_2Serializer(Ovrigt_2.objects.all(), many=True).data,
            'ovrigt_forstudier': Ovrigt_forstudierSerializer(Ovrigt_forstudier.objects.all(), many=True).data,
            'values_hydro': Values_hydroSerializer(Values_hydro.objects.all(), many=True).data,
            'values_livsmiljo': Values_livsmiljoSerializer(Values_livsmiljo.objects.all(), many=True).data,
            'values_kvant_artforekomst': Values_kvant_artforekomstSerializer(Values_kvant_artforekomst.objects.all(), many=True).data,
            'values_kartlaggningstyp': Values_kartlaggningstypSerializer(Values_kartlaggningstyp.objects.all(), many=True).data,
            'values_naturvardesklass': Values_naturvardesklassSerializer(Values_naturvardesklass.objects.all(), many=True).data,
        }
        return other_data

    def get_mark_data(self):
        # Fetch and serialize data for each Mark model
        mark_data = {
            'ecosystem_category_mark_nat': Ecosystem_category_mark_natSerializer(Ecosystem_category_mark_nat.objects.all(), many=True).data,
            'kalfjall': KalfjallSerializer(Kalfjall.objects.all(), many=True).data,
            'berg_och_sten': Berg_och_stenSerializer(Berg_och_sten.objects.all(), many=True).data,
            'naturligt_bar_jord': Naturligt_bar_jordSerializer(Naturligt_bar_jord.objects.all(), many=True).data,
            'naturlig_grasmark': Naturlig_grasmarkSerializer(Naturlig_grasmark.objects.all(), many=True).data,
            'skog_buskmark': Skog_buskmarkSerializer(Skog_buskmark.objects.all(), many=True).data,
            'myr_mark': Myr_markSerializer(Myr_mark.objects.all(), many=True).data,
            'ecosystem_category_mark_ant': Ecosystem_category_mark_antSerializer(Ecosystem_category_mark_ant.objects.all(), many=True).data,
            'values_mark_ant': Values_mark_antSerializer(Values_mark_ant.objects.all(), many=True).data
        }
        return mark_data

    def get_sotvatten_data(self):
        # Fetch and serialize data for each Sotvatten model
        sotvatten_data = {
            'ecosystem_category_sotv_nat': Ecosystem_category_sotv_natSerializer(Ecosystem_category_sotv_nat.objects.all(), many=True).data,
            'sjo': SjoSerializer(Sjo.objects.all(), many=True).data,
            'naturliga_smavatten': Naturliga_smavattenSerializer(Naturliga_smavatten.objects.all(), many=True).data,
            'vattendrag': VattendragSerializer(Vattendrag.objects.all(), many=True).data,
            'ecosystem_category_sotv_ant': Ecosystem_category_sotv_antSerializer(Ecosystem_category_sotv_ant.objects.all(), many=True).data,
            'values_sotv_ant': Values_sotv_antSerializer(Values_sotv_ant.objects.all(), many=True).data
        }
        return sotvatten_data

    def get_hav_data(self):
        # Fetch and serialize data for each Hav model
        hav_data = {
            'ecosystem_category_hav_nat': Ecosystem_category_hav_natSerializer(Ecosystem_category_hav_nat.objects.all(), many=True).data,
            'marint_ostersjon': Marint_ostersjonSerializer(Marint_ostersjon.objects.all(), many=True).data,
            'marint_atlantiskt': Marint_atlantisktSerializer(Marint_atlantiskt.objects.all(), many=True).data,
            'ecosystem_category_hav_ant': Ecosystem_category_hav_antSerializer(Ecosystem_category_hav_ant.objects.all(), many=True).data,
            'values_hav_ant': Values_hav_antSerializer(Values_hav_ant.objects.all(), many=True).data,
            'biotop_other': Biotop_otherSerializer(Biotop_other.objects.all(), many=True).data
        }
        return hav_data
