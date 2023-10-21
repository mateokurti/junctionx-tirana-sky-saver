from django.contrib.auth import get_user_model
from django_countries.serializers import CountryFieldMixin
from rest_framework import serializers

from users.models import Traveller

User = get_user_model()


class TravellerSerializer(CountryFieldMixin, serializers.ModelSerializer):
    class Meta:
        model = Traveller
        fields = "__all__"


class UserAccountSerializer(serializers.ModelSerializer):
    traveller = TravellerSerializer()

    class Meta:
        model = User
        fields = (
            "id",
            "email",
            "traveller",
        )

        extra_kwargs = {"url": {"view_name": "api:user-detail", "lookup_field": "id"}}
