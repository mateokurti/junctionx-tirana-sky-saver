# Generated by Django 4.2.5 on 2023-10-21 22:29

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("bookings", "0002_bookedsegment_traveller"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="bookedsegment",
            name="traveller",
        ),
    ]
