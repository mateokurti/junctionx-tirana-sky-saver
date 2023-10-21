from rest_framework import serializers

from badges.models import Badge, FlightCountStrategy, MilesCountStrategy, RegionalStrategy, BadgeClaim


class FlightCountStrategySerializer(serializers.ModelSerializer):
    class Meta:
        model = FlightCountStrategy
        fields = '__all__'


class MilesCountStrategySerializer(serializers.ModelSerializer):
    class Meta:
        model = MilesCountStrategy
        fields = '__all__'


class RegionalStrategySerializer(serializers.ModelSerializer):
    class Meta:
        model = RegionalStrategy
        fields = '__all__'


class BadgeSerializer(serializers.ModelSerializer):
    flight_count_strategy = FlightCountStrategySerializer(allow_null=True)
    miles_count_strategy = MilesCountStrategySerializer(allow_null=True)
    regional_strategy = RegionalStrategySerializer(allow_null=True)
    claimed = serializers.SerializerMethodField()

    class Meta:
        model = Badge
        exclude = ('users',)

    def get_claimed(self, obj) -> bool:
        return BadgeClaim.objects.filter(badge=obj, user=self.context['request'].user).exists()
