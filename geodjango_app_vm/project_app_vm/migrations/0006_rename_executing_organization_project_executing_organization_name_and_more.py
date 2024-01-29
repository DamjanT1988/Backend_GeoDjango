# Generated by Django 5.0 on 2024-01-29 08:49

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("project_app_vm", "0005_project_executing_organization_and_more"),
    ]

    operations = [
        migrations.RenameField(
            model_name="project",
            old_name="executing_organization",
            new_name="executing_organization_name",
        ),
        migrations.RenameField(
            model_name="project",
            old_name="ordering_organization",
            new_name="ordering_organization_name",
        ),
        migrations.AddField(
            model_name="project",
            name="executing_organization_number",
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AddField(
            model_name="project",
            name="ordering_organization_number",
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
