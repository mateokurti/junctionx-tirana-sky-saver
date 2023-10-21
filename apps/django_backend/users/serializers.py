from django.contrib.auth import get_user_model
from django_countries.serializers import CountryFieldMixin
from rest_framework import serializers

User = get_user_model()


class UserAccountSerializer(CountryFieldMixin, serializers.ModelSerializer):
    class Meta:
        model = User
        fields = (
            "id",
            "email",
            "first_name",
            "last_name",
            "birth_date",
            "gender",
            "avatar",
            "country",
            "onboarded",
        )

        extra_kwargs = {"url": {"view_name": "api:user-detail", "lookup_field": "id"}}
