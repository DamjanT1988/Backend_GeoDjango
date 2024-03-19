# Generated by Django 5.0 on 2024-02-26 15:38

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("project_app_vm", "0013_project_saved_object_ids"),
    ]

    operations = [
        migrations.CreateModel(
            name="ProjectKartering",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "kartering_types",
                    models.CharField(max_length=255, verbose_name="Kartering Types"),
                ),
                (
                    "used_karteringar",
                    models.CharField(max_length=255, verbose_name="Used Karteringar"),
                ),
                (
                    "project",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="karteringar",
                        to="project_app_vm.project",
                        verbose_name="Project",
                    ),
                ),
            ],
            options={
                "verbose_name": "Project Kartering",
                "verbose_name_plural": "Project Karteringar",
            },
        ),
    ]