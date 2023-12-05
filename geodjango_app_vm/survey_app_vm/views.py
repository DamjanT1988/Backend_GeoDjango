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


"""
class DynamicListView(generics.ListCreateAPIView):
    def get_queryset(self):
        model_name = self.kwargs['model_name']
        model = apps.get_model('survey_app_vm', model_name)
        return model.objects.all()

    def get_serializer_class(self):
        model_name = self.kwargs['model_name']
        serializer_class_name = model_name + 'Serializer'
        return globals()[serializer_class_name]

    def list(self, request, *args, **kwargs):
        model_name = self.kwargs['model_name']
        if not model_name in globals():
            return Response({'error': 'Invalid model name'}, status=status.HTTP_404_NOT_FOUND)
        return super(DynamicListView, self).list(request, *args, **kwargs)
"""

class AggregatedDataViewOther(APIView):
    def get(self, request, format=None):
        data = {}

        # Fetch and serialize data for each model
        data['group_naturvardestrad'] = GroupNaturvardestradSerializer(Group_naturvardestrad.objects.all(), many=True).data
        data['gamla_grovatrad_haltrad'] = GamlaGrovatradHaltradSerializer(Gamla_grovatrad_haltrad.objects.all(), many=True).data
        data['berg_sten'] = BergStenSerializer(Berg_sten.objects.all(), many=True).data
        data['hogstubbar_lagor'] = HogstubbarLagorSerializer(Hogstubbar_lagor.objects.all(), many=True).data
        data['vaxtsatt'] = VaxtsattSerializer(Vaxtsatt.objects.all(), many=True).data
        data['ekologisk_funktion'] = EkologiskFunktionSerializer(Ekologisk_funktion.objects.all(), many=True).data
        data['element_strukturer'] = ElementStrukturerSerializer(Element_strukturer.objects.all(), many=True).data
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
        data['kust_hav'] = KustHavSerializer(Kust_hav.objects.all(), many=True).data
        data['dyner'] = DynerSerializer(Dyner.objects.all(), many=True).data
        data['sotvatten'] = SotvattenSerializer(Sotvatten.objects.all(), many=True).data
        data['grasmark'] = GrasmarkSerializer(Grasmark.objects.all(), many=True).data
        data['myrer'] = MyrerSerializer(Myrer.objects.all(), many=True).data
        data['berg_substratmark'] = BergSubstratmarkSerializer(Berg_substratmark.objects.all(), many=True).data
        data['skog'] = SkogSerializer(Skog.objects.all(), many=True).data
        data['ovrigt_2'] = Ovrigt2Serializer(Ovrigt_2.objects.all(), many=True).data
        data['ovrigt_forstudier'] = OvrigtForstudierSerializer(Ovrigt_forstudier.objects.all(), many=True).data
        data['values_hydro'] = ValuesHydroSerializer(Values_hydro.objects.all(), many=True).data
        data['values_livsmiljo'] = ValuesLivsmiljoSerializer(Values_livsmiljo.objects.all(), many=True).data
        data['values_kvant_artforekomst'] = ValuesKvantArtforekomstSerializer(Values_kvant_artforekomst.objects.all(), many=True).data
        data['values_kartlaggningstyp'] = ValuesKartlaggningstypSerializer(Values_kartlaggningstyp.objects.all(), many=True).data
        data['values_naturvardesklass'] = ValuesNaturvardesklassSerializer(Values_naturvardesklass.objects.all(), many=True).data

        return Response(data)



"""
from rest_framework import generics
from survey_app_vm.models import (Group_naturvardestrad, Gamla_grovatrad_haltrad, Berg_sten,
                     Hogstubbar_lagor, Vaxtsatt, Ekologisk_funktion, Element_strukturer,
                     Artforekomst, Annat)
from survey_app_vm.serializers import (GroupNaturvardestradSerializer, GamlaGrovatradHaltradSerializer, BergStenSerializer,
                          HogstubbarLagorSerializer, VaxtsattSerializer, EkologiskFunktionSerializer, 
                          ElementStrukturerSerializer, ArtforekomstSerializer, AnnatSerializer)

class GroupNaturvardestradList(generics.ListCreateAPIView):
    queryset = Group_naturvardestrad.objects.all()
    serializer_class = GroupNaturvardestradSerializer

class GamlaGrovatradHaltradList(generics.ListCreateAPIView):
    queryset = Gamla_grovatrad_haltrad.objects.all()
    serializer_class = GamlaGrovatradHaltradSerializer

class BergStenList(generics.ListCreateAPIView):
    queryset = Berg_sten.objects.all()
    serializer_class = BergStenSerializer

class HogstubbarLagorList(generics.ListCreateAPIView):
    queryset = Hogstubbar_lagor.objects.all()
    serializer_class = HogstubbarLagorSerializer

class VaxtsattList(generics.ListCreateAPIView):
    queryset = Vaxtsatt.objects.all()
    serializer_class = VaxtsattSerializer

class EkologiskFunktionList(generics.ListCreateAPIView):
    queryset = Ekologisk_funktion.objects.all()
    serializer_class = EkologiskFunktionSerializer

class ElementStrukturerList(generics.ListCreateAPIView):
    queryset = Element_strukturer.objects.all()
    serializer_class = ElementStrukturerSerializer

class ArtforekomstList(generics.ListCreateAPIView):
    queryset = Artforekomst.objects

class AnnatList(generics.ListCreateAPIView):
    queryset = Annat.objects
"""