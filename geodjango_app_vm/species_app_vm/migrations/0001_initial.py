# Generated by Django 4.2.7 on 2023-11-30 13:21

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name="SpeciesCentralDatabank",
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
                    "species_name_common",
                    models.CharField(max_length=255, verbose_name="Svenskt namn:"),
                ),
                (
                    "latin_name",
                    models.CharField(
                        max_length=255, verbose_name="Vetenskapligt namn:"
                    ),
                ),
                ("species_data", models.JSONField()),
                (
                    "last_update_date",
                    models.DateTimeField(
                        auto_now_add=True, verbose_name="Senast uppdaterad:"
                    ),
                ),
                ("source", models.CharField(max_length=255, verbose_name="Källa:")),
            ],
            options={
                "verbose_name": "Artdatabanken",
                "verbose_name_plural": "Artdatabanken",
            },
        ),
        migrations.CreateModel(
            name="SpeciesUserDatabank",
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
                    "species_name_common",
                    models.CharField(max_length=255, verbose_name="Svenskt namn:"),
                ),
                (
                    "latin_name",
                    models.CharField(
                        max_length=255, verbose_name="Vetenskapligt namn:"
                    ),
                ),
                ("species_data", models.JSONField()),
                (
                    "last_update_date",
                    models.DateTimeField(
                        auto_now_add=True, verbose_name="Senast uppdaterad:"
                    ),
                ),
                ("source", models.CharField(max_length=255, verbose_name="Källa:")),
                (
                    "user",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
            options={
                "verbose_name": "Användardatabas",
                "verbose_name_plural": "Användardatabas",
            },
        ),
    ]
