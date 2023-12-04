# report_app_vm/models.py

from django.db import models
from project_app_vm.models import Project  # Adjust this import based on your project structure

class Report(models.Model):
    report_data = models.FileField(upload_to='reports/')
    generated_date = models.DateTimeField(auto_now_add=True)
    project = models.ForeignKey(Project, on_delete=models.CASCADE)

    def __str__(self):
        return f"Report for {self.project.project_name} generated on {self.generated_date}"
