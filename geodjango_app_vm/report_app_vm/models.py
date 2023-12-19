# report_app_vm/models.py

from django.db import models
from project_app_vm.models import Project  # Adjust this import based on your project structure

class Report(models.Model):
    report_data = models.FileField(upload_to='project_reports/')
    generated_date = models.DateTimeField(auto_now_add=True)
    project = models.ForeignKey(Project, on_delete=models.CASCADE)

    def __str__(self):
        return f"Report for {self.project.project_name} generated on {self.generated_date}"

    def __doc__(self):
        """
        A model representing a report.

        Attributes:
            report_data (FileField): The file field for the report data.
            generated_date (DateTimeField): The date and time when the report was generated.
            project (ForeignKey): The foreign key to the project associated with the report.

        Methods:
            __str__(): Returns a string representation of the report.
        """
