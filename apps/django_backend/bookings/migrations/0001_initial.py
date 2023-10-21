# Generated by Django 4.2.5 on 2023-10-21 20:16

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        ("users", "0001_initial"),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name="Ticket",
            fields=[
                (
                    "ticket_number",
                    models.CharField(max_length=12, primary_key=True, serialize=False),
                ),
                ("ticketing_airline", models.CharField(max_length=2)),
                ("ticket_status", models.CharField(max_length=10)),
                ("issued_date", models.DateField()),
                (
                    "traveller",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to="users.traveller",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="Booking",
            fields=[
                (
                    "booking_reference",
                    models.CharField(max_length=6, primary_key=True, serialize=False),
                ),
                (
                    "user",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="BookedSegment",
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
                ("origin", models.CharField(max_length=3)),
                ("destination", models.CharField(max_length=3)),
                ("flight_number", models.CharField(max_length=6)),
                ("flight_date", models.DateField()),
                ("airline_code", models.CharField(max_length=2)),
                ("departure_date", models.DateTimeField()),
                ("arrival_date", models.DateTimeField()),
                ("booking_class", models.CharField(max_length=20)),
                ("price", models.DecimalField(decimal_places=2, max_digits=10)),
                ("tax_percentage", models.DecimalField(decimal_places=2, max_digits=5)),
                (
                    "ticket",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to="bookings.ticket",
                    ),
                ),
            ],
        ),
    ]