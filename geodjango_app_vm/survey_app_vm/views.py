from django.shortcuts import render

from rest_framework import generics
from survey_app_vm.models_other import OtherSurvey
from survey_app_vm.serializers import OtherSurveySerializer, NatureTypeSurveySerializer

class OtherSurveyList(generics.ListAPIView):
    queryset = OtherSurvey.objects.all()
    serializer_class = OtherSurveySerializer

"""
class NatureTypeSurveyList(generics.ListAPIView):
    queryset = NatureTypeSurvey.objects.all()
    serializer_class = NatureTypeSurveySerializer
"""