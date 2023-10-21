# -*- coding: utf-8 -*-
from django.contrib import admin
from import_export.admin import ImportExportModelAdmin

from .models import Booking, Ticket, BookedSegment


@admin.register(Booking)
class BookingAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ('booking_reference', 'user')
    list_filter = ('user',)


@admin.register(Ticket)
class TicketAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = (
        'ticket_number',
        'ticketing_airline',
        'ticket_status',
        'issued_date',
        'traveller',
    )
    list_filter = ('issued_date', 'traveller')


@admin.register(BookedSegment)
class BookedSegmentAdmin(ImportExportModelAdmin, admin.ModelAdmin):
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
