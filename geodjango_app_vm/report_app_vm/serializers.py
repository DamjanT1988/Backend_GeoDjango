from rest_framework import serializers
from report_app_vm.models import Report

class ReportSerializer(serializers.ModelSerializer):
    """
    Serializer for the Report model.
    """
    class Meta:
        model = Report
        fields = '__all__'
