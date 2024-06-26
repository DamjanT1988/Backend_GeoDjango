# Generated by Django 5.0 on 2024-02-01 06:35

import uuid
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("project_app_vm", "0009_delete_mappinginformation_delete_referencematerial"),
    ]

    operations = [
        migrations.CreateModel(
            name="MappingInformation",
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
                    "limitations_uncertainties",
                    models.TextField(
                        blank=True, verbose_name="Begränsningar och osäkerheter"
                    ),
                ),
                (
                    "methods_scope",
                    models.TextField(blank=True, verbose_name="Metoder och omfattning"),
                ),
                (
                    "minimum_mapping_unit",
                    models.TextField(verbose_name="Minsta karteringsenhet"),
                ),
                (
                    "mapping_type",
                    models.CharField(
                        max_length=255, verbose_name="Typ av kartläggning"
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="ProjectInformation",
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
                ("reason", models.TextField(verbose_name="Anledning")),
                (
                    "mapping_area_description",
                    models.TextField(verbose_name="Beskrivning av kartläggningsområde"),
                ),
                (
                    "ordering_organization_name",
                    models.CharField(max_length=255, verbose_name="Namn"),
                ),
                (
                    "ordering_organization_number",
                    models.CharField(max_length=50, verbose_name="Organisationsnummer"),
                ),
                (
                    "object_identity",
                    models.UUIDField(
                        default=uuid.uuid4,
                        editable=False,
                        verbose_name="Objektidentitet",
                    ),
                ),
                ("object_version", models.IntegerField(verbose_name="Objektversion")),
                (
                    "project_identity",
                    models.CharField(max_length=255, verbose_name="Projektidentitet"),
                ),
                (
                    "date",
                    models.DateTimeField(blank=True, null=True, verbose_name="Datum"),
                ),
                (
                    "event_date",
                    models.DateTimeField(
                        blank=True, null=True, verbose_name="Händelse"
                    ),
                ),
                (
                    "period_start",
                    models.DateTimeField(
                        blank=True,
                        help_text="Tidsperiod start",
                        null=True,
                        verbose_name="Från",
                    ),
                ),
                (
                    "period_end",
                    models.DateTimeField(
                        blank=True,
                        help_text="Tidsperiod slut",
                        null=True,
                        verbose_name="Till",
                    ),
                ),
                (
                    "version_valid_from",
                    models.DateTimeField(verbose_name="Version giltig från"),
                ),
                (
                    "version_valid_to",
                    models.DateTimeField(
                        blank=True,
                        help_text="Lämna tomt för senaste versionen",
                        null=True,
                        verbose_name="Version giltig till",
                    ),
                ),
                (
                    "short_name",
                    models.CharField(
                        blank=True, max_length=255, null=True, verbose_name="Kortnamn"
                    ),
                ),
                (
                    "reference_identity",
                    models.CharField(
                        blank=True, max_length=255, null=True, verbose_name="Identitet"
                    ),
                ),
                ("link", models.URLField(blank=True, null=True, verbose_name="Länk")),
                (
                    "namespace",
                    models.CharField(
                        blank=True, max_length=255, null=True, verbose_name="Namnrymd"
                    ),
                ),
                (
                    "specific_reference",
                    models.TextField(
                        blank=True, null=True, verbose_name="Specifik referens"
                    ),
                ),
                (
                    "summary_of_results",
                    models.TextField(
                        blank=True, null=True, verbose_name="Sammanfattning av resultat"
                    ),
                ),
                (
                    "executing_organization_name",
                    models.CharField(
                        blank=True,
                        max_length=255,
                        null=True,
                        verbose_name="Utförande organisation Namn",
                    ),
                ),
                (
                    "executing_organization_number",
                    models.CharField(
                        blank=True,
                        max_length=50,
                        null=True,
                        verbose_name="Organisationsnummer",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="ReferenceMaterial",
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
                ("date", models.DateTimeField(verbose_name="Datum")),
                ("source", models.CharField(max_length=255, verbose_name="Källa")),
                (
                    "object_identity",
                    models.CharField(max_length=255, verbose_name="Objektidentitet"),
                ),
                ("object_version", models.IntegerField(verbose_name="Objektversion")),
                (
                    "reference_date",
                    models.DateTimeField(blank=True, null=True, verbose_name="Datum"),
                ),
                (
                    "event_date",
                    models.DateTimeField(
                        blank=True, null=True, verbose_name="Händelse"
                    ),
                ),
                (
                    "short_name",
                    models.CharField(
                        blank=True, max_length=255, verbose_name="Kortnamn"
                    ),
                ),
                (
                    "name",
                    models.CharField(blank=True, max_length=255, verbose_name="Namn"),
                ),
                (
                    "reference_identity",
                    models.UUIDField(
                        blank=True,
                        default=uuid.uuid4,
                        editable=False,
                        verbose_name="Identitet",
                    ),
                ),
                ("link", models.URLField(blank=True, verbose_name="Länk")),
                (
                    "namespace",
                    models.CharField(
                        blank=True, max_length=255, verbose_name="Namnrymd"
                    ),
                ),
                (
                    "specific_reference",
                    models.TextField(blank=True, verbose_name="Specifik referens"),
                ),
                (
                    "valid_from",
                    models.DateTimeField(verbose_name="Version giltig från"),
                ),
                ("valid_to", models.DateTimeField(verbose_name="Version giltig till")),
            ],
        ),
    ]
