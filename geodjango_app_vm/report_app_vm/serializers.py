# report_app_vm/serializers.py

from rest_framework import serializers
from report_app_vm.models import Report

class ReportSerializer(serializers.ModelSerializer):
    class Meta:
        model = Report
        fields = '__all__'
