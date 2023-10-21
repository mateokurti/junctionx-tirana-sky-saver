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

    username = None
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
    traveller = models.ForeignKey("Traveller", on_delete=models.CASCADE, blank=True, null=True)

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


class Traveller(models.Model):
    class Salutation(models.TextChoices):
        MR = "MR", _("Mr")
        MS = "MS", _("Ms")
        MRS = "MRS", _("Mrs")
        CHD = "CHD", _("Chd")
        INF = "INF", _("Inf")

    class Gender(models.TextChoices):
        MALE = "m", _("Male")
        FEMALE = "f", _("Female")

    #  Column(Enum("ADULT", "CHILD", "INFANT", name="passenger_type_enum"), nullable=False)
    class PassengerType(models.TextChoices):
        ADULT = "ADULT", _("Adult")
        CHILD = "CHILD", _("Child")
        INFANT = "INFANT", _("Infant")

    first_name = models.CharField(max_length=50)
    middle_name = models.CharField(max_length=50, blank=True, null=True)
    last_name = models.CharField(max_length=50)
    salutation = models.CharField(max_length=3, choices=Salutation.choices, default=Salutation.MR)

    avatar = ResizedImageField(upload_to=user_avatar_path, blank=True, null=True)
    gender = models.CharField(max_length=1, choices=Gender.choices, default=Gender.MALE)
    passenger_type = models.CharField(max_length=6, choices=PassengerType.choices, default=PassengerType.ADULT)
    frequent_flyer_number = models.CharField(max_length=20, blank=True, null=True)
    # document = models.ForeignKey("Document", on_delete=models.CASCADE, blank=True, null=True)

    street = models.CharField(max_length=255)
    city = models.CharField(max_length=100)
    postal_code = models.CharField(max_length=10)
    country = CountryField(null=True, blank=True)

    def __str__(self):
        return f"{self.first_name} {self.last_name}"
