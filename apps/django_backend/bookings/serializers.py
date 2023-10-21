from rest_framework import serializers

from bookings.models import BookedSegment, Booking, Ticket
from users.serializers import TravellerSerializer, UserAccountSerializer


class BookedSegmentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookedSegment
        fields = "__all__"


class TicketSerializer(serializers.ModelSerializer):
    traveller = TravellerSerializer(read_only=True)
    booked_segments = BookedSegmentsSerializer(many=True, read_only=True, source="bookedsegment_set")
    total_price = serializers.SerializerMethodField()

    class Meta:
        model = Ticket
        fields = "__all__"

    def get_total_price(self, obj) -> float:
        return sum(segment.price for segment in obj.bookedsegment_set.all())


class BookingSerializer(serializers.ModelSerializer):
    user = UserAccountSerializer(read_only=True)
    tickets = TicketSerializer(many=True, read_only=True)
    total_price = serializers.SerializerMethodField()

    class Meta:
        model = Booking
        fields = "__all__"

    def get_total_price(self, obj) -> float:
        return sum(ticket.total_price for ticket in obj.tickets.all())
