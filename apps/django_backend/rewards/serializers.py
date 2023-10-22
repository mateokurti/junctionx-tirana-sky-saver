from rewards.models import Reward, Partner
from rest_framework import serializers


class PartnerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Partner
        fields = "__all__"


class RewardSerializer(serializers.ModelSerializer):
    partner = PartnerSerializer(read_only=True)

    class Meta:
        model = Reward
        fields = "__all__"
