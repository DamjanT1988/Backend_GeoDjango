# Generated by Django 5.0 on 2024-02-26 15:51

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("project_app_vm", "0014_projectkartering"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="projectkartering",
            name="kartering_types",
        ),
    ]