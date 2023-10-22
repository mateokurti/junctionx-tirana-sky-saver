# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import Booking, Ticket, BookedSegment


@admin.register(Booking)
class BookingAdmin(admin.ModelAdmin):
    list_display = ('booking_reference', 'user')
    list_filter = ('user',)


@admin.register(Ticket)
class TicketAdmin(admin.ModelAdmin):
    list_display = (
        'ticket_number',
        'ticketing_airline',
        'ticket_status',
        'issued_date',
        'traveller',
    )
    list_filter = ('issued_date', 'traveller')


@admin.register(BookedSegment)
class BookedSegmentAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'origin',
        'destination',
        'flight_number',
        'flight_date',
        'airline_code',
        'departure_date',
        'arrival_date',
        'booking_class',
        'price',
        'tax_percentage',
        'ticket',
    )
    list_filter = ('flight_date', 'departure_date', 'arrival_date', 'ticket')
