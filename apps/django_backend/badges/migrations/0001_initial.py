# Generated by Django 4.2.5 on 2023-10-21 20:26

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
            name="Attraction",
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
                ("name", models.CharField(max_length=255)),
                ("description", models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name="Badge",
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
                ("name", models.CharField(max_length=255)),
                ("description", models.CharField(max_length=255)),
                ("icon_url", models.CharField(max_length=255)),
                ("tokens", models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name="Country",
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
                ("name", models.CharField(max_length=255)),
                ("code", models.CharField(max_length=2)),
                (
                    "continent",
                    models.CharField(
                        choices=[
                            ("AS", "Asia"),
                            ("EU", "Europe"),
                            ("NA", "North America"),
                            ("SA", "South America"),
                            ("AF", "Africa"),
                            ("OC", "Oceania"),
                        ],
                        max_length=2,
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="FlightCountStrategy",
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
                ("count", models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name="MilesCountStrategy",
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
                ("count", models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name="RegionalStrategy",
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
                ("countries", models.ManyToManyField(to="badges.country")),
            ],
        ),
        migrations.CreateModel(
            name="CountryAttraction",
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
                    "attraction",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="badges.attraction",
                    ),
                ),
                (
                    "country",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE, to="badges.country"
                    ),
                ),
            ],
        ),
        migrations.AddField(
            model_name="country",
            name="attractions",
            field=models.ManyToManyField(
                through="badges.CountryAttraction", to="badges.attraction"
            ),
        ),
        migrations.CreateModel(
            name="BadgeClaim",
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
                ("claimed_date", models.DateTimeField(auto_now_add=True)),
                (
                    "badge",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE, to="badges.badge"
                    ),
                ),
                (
                    "user_id",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
        ),
        migrations.AddField(
            model_name="badge",
            name="flight_count_strategy_id",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                to="badges.flightcountstrategy",
            ),
        ),
        migrations.AddField(
            model_name="badge",
            name="miles_count_strategy_id",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                to="badges.milescountstrategy",
            ),
        ),
        migrations.AddField(
            model_name="badge",
            name="regional_strategy_id",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                to="badges.regionalstrategy",
            ),
        ),
        migrations.AddField(
            model_name="badge",
            name="users",
            field=models.ManyToManyField(
                through="badges.BadgeClaim", to=settings.AUTH_USER_MODEL
            ),
        ),
    ]