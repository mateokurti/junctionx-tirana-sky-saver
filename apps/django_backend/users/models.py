from django.contrib.auth.models import AbstractUser
from django.core.validators import EmailValidator
from django.db import models
from django.urls import reverse
from django.utils.translation import gettext_lazy as _
from django_countries.fields import CountryField
from django_resized import ResizedImageField

from users.managers import UserManager


def user_avatar_path(instance, filename):
    return f"avatars/{instance.id}/{filename}"


class User(AbstractUser):
    """
    Default custom user model.
    """

    class Gender(models.TextChoices):
        MALE = "m", _("Male")
        FEMALE = "f", _("Female")

    username = None
    birth_date = models.DateField(null=True, blank=True)
    gender = models.CharField(max_length=1, choices=Gender.choices, default=Gender.MALE)
    avatar = ResizedImageField(upload_to=user_avatar_path, blank=True, null=True)
    email = models.EmailField(
        _("email address"),
        unique=True,
        db_index=True,
        validators=[
            EmailValidator,
        ],
        error_messages={
            "unique": _("A user with that email already exists."),
        },
    )
    country = CountryField(null=True, blank=True)
    onboarded = models.BooleanField(default=False, blank=True)

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []
    objects = UserManager()

    def get_absolute_url(self):
        """Get url for user's detail view.

        Returns:
            str: URL for user detail.

        """
        return reverse("api:user-detail", kwargs={"pk": self.id})

    def __str__(self):
        return self.email
