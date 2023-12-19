from rest_framework import generics
from report_app_vm.models import Report
from report_app_vm.serializers import ReportSerializer

class ReportList(generics.ListAPIView):
    queryset = Report.objects.all()
    serializer_class = ReportSerializer

class ReportDetail(generics.RetrieveAPIView):
    """
    API view for retrieving a single report.

    Inherits from `generics.RetrieveAPIView` and uses the `ReportSerializer` for serialization.
    """
    queryset = Report.objects.all()
    serializer_class = ReportSerializer
