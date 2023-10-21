from drf_spectacular.openapi import AutoSchema
from drf_spectacular.utils import OpenApiParameter
from rest_framework import serializers


class DummySerializer(serializers.Serializer):
    def to_internal_value(self, data):
        return data

    def to_representation(self, instance):
        return instance

    def update(self, instance, validated_data):
        pass

    def create(self, validated_data):
        pass


class FieldValidationErrorSerializer(DummySerializer):
    field = serializers.CharField()
    message = serializers.CharField()


class ValidationErrorSerializer(DummySerializer):
    errors = FieldValidationErrorSerializer(many=True)


class UnauthenticatedErrorSerializer(DummySerializer):
    detail = serializers.CharField()


class ForbiddenErrorSerializer(DummySerializer):
    detail = serializers.CharField()


class NotFoundErrorSerializer(DummySerializer):
    detail = serializers.CharField()


class CustomAutoSchema(AutoSchema):
    global_params = [
        OpenApiParameter(
            name="accept-language",
            type=str,
            location=OpenApiParameter.HEADER,
            description="`sq` or `en`. The default value is en",
        ),
        OpenApiParameter(
            name="authorization",
            type=str,
            location=OpenApiParameter.HEADER,
            description="User authorization token",
        ),
        OpenApiParameter(
            name="jwt-auth-cookie",
            type=str,
            location=OpenApiParameter.COOKIE,
            description="User authorization cookie",
        ),
    ]

    def get_override_parameters(self):
        params = super().get_override_parameters()
        return params + self.global_params

    def _get_response_bodies(self, direction="response"):
        response_bodies = super()._get_response_bodies()
        if len(list(filter(lambda _: _.startswith("4"), response_bodies.keys()))):
            return response_bodies

        add_error_codes = []
        if self.method != "GET":
            add_error_codes.append("400")

        if self.get_auth():
            add_error_codes.extend(("401", "403"))
        if not (self.method == "GET" and self._is_list_view()) and len(
            list(filter(lambda _: _["in"] == "path", self._get_parameters()))
        ):
            add_error_codes.append("404")

        self.error_response_bodies = {
            "400": self._get_response_for_code(ValidationErrorSerializer, "400"),
            "401": self._get_response_for_code(UnauthenticatedErrorSerializer, "401"),
            "403": self._get_response_for_code(ForbiddenErrorSerializer, "403"),
            "404": self._get_response_for_code(NotFoundErrorSerializer, "404"),
        }
        for code in add_error_codes:
            response_bodies[code] = self.error_response_bodies[code]
        return response_bodies
