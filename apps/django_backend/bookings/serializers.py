from rest_framework import serializers

from bookings.models import Booking, Ticket, BookedSegment
from users.serializers import UserAccountSerializer, TravellerSerializer


class BookedSegmentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookedSegment
        fields = '__all__'


class TicketSerializer(serializers.ModelSerializer):
    traveller = TravellerSerializer(read_only=True)
    booked_segments = BookedSegmentsSerializer(many=True, read_only=True, source='bookedsegment_set')

    class Meta:
        model = Ticket
        fields = '__all__'


class BookingSerializer(serializers.ModelSerializer):
    user = UserAccountSerializer(read_only=True)
    tickets = TicketSerializer(many=True, read_only=True)

    class Meta:
        model = Booking
        fields = '__all__'
