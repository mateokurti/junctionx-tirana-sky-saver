# Generated by Django 4.2.5 on 2023-10-21 20:05

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import django_countries.fields
import django_resized.forms
import users.managers
import users.models


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        ("auth", "0012_alter_user_first_name_max_length"),
    ]

    operations = [
        migrations.CreateModel(
            name="Traveller",
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
                ("first_name", models.CharField(max_length=50)),
                ("middle_name", models.CharField(blank=True, max_length=50, null=True)),
                ("last_name", models.CharField(max_length=50)),
                (
                    "salutation",
                    models.CharField(
                        choices=[
                            ("MR", "Mr"),
                            ("MS", "Ms"),
                            ("MRS", "Mrs"),
                            ("CHD", "Chd"),
                            ("INF", "Inf"),
                        ],
                        default="MR",
                        max_length=3,
                    ),
                ),
                (
                    "avatar",
                    django_resized.forms.ResizedImageField(
                        blank=True,
                        crop=None,
                        force_format="JPEG",
                        keep_meta=False,
                        null=True,
                        quality=75,
                        scale=None,
                        size=[1920, 1080],
                        upload_to=users.models.user_avatar_path,
                    ),
                ),
                (
                    "gender",
                    models.CharField(
                        choices=[("m", "Male"), ("f", "Female")],
                        default="m",
                        max_length=1,
                    ),
                ),
                (
                    "passenger_type",
                    models.CharField(
                        choices=[
                            ("ADULT", "Adult"),
                            ("CHILD", "Child"),
                            ("INFANT", "Infant"),
                        ],
                        default="ADULT",
                        max_length=6,
                    ),
                ),
                (
                    "frequent_flyer_number",
                    models.CharField(blank=True, max_length=20, null=True),
                ),
                ("street", models.CharField(max_length=255)),
                ("city", models.CharField(max_length=100)),
                ("postal_code", models.CharField(max_length=10)),
                (
                    "country",
                    django_countries.fields.CountryField(
                        blank=True, max_length=2, null=True
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="User",
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
                ("password", models.CharField(max_length=128, verbose_name="password")),
                (
                    "last_login",
                    models.DateTimeField(
                        blank=True, null=True, verbose_name="last login"
                    ),
                ),
                (
                    "is_superuser",
                    models.BooleanField(
                        default=False,
                        help_text="Designates that this user has all permissions without explicitly assigning them.",
                        verbose_name="superuser status",
                    ),
                ),
                (
                    "first_name",
                    models.CharField(
                        blank=True, max_length=150, verbose_name="first name"
                    ),
                ),
                (
                    "last_name",
                    models.CharField(
                        blank=True, max_length=150, verbose_name="last name"
                    ),
                ),
                (
                    "is_staff",
                    models.BooleanField(
                        default=False,
                        help_text="Designates whether the user can log into this admin site.",
                        verbose_name="staff status",
                    ),
                ),
                (
                    "is_active",
                    models.BooleanField(
                        default=True,
                        help_text="Designates whether this user should be treated as active. Unselect this instead of deleting accounts.",
                        verbose_name="active",
                    ),
                ),
                (
                    "date_joined",
                    models.DateTimeField(
                        default=django.utils.timezone.now, verbose_name="date joined"
                    ),
                ),
                (
                    "email",
                    models.EmailField(
                        db_index=True,
                        error_messages={
                            "unique": "A user with that email already exists."
                        },
                        max_length=254,
                        unique=True,
                        validators=[django.core.validators.EmailValidator],
                        verbose_name="email address",
                    ),
                ),
                (
                    "groups",
                    models.ManyToManyField(
                        blank=True,
                        help_text="The groups this user belongs to. A user will get all permissions granted to each of their groups.",
                        related_name="user_set",
                        related_query_name="user",
                        to="auth.group",
                        verbose_name="groups",
                    ),
                ),
                (
                    "traveller",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to="users.traveller",
                    ),
                ),
                (
                    "user_permissions",
                    models.ManyToManyField(
                        blank=True,
                        help_text="Specific permissions for this user.",
                        related_name="user_set",
                        related_query_name="user",
                        to="auth.permission",
                        verbose_name="user permissions",
                    ),
                ),
            ],
            options={
                "verbose_name": "user",
                "verbose_name_plural": "users",
                "abstract": False,
            },
            managers=[
                ("objects", users.managers.UserManager()),
            ],
        ),
    ]
