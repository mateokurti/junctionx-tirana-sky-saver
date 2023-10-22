# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import Attraction, Country, FlightCountStrategy, MilesCountStrategy, RegionalStrategy, Badge, BadgeClaim, CountryAttraction


@admin.register(Attraction)
class AttractionAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'description')
    search_fields = ('name',)


@admin.register(Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'code', 'continent')
    raw_id_fields = ('attractions',)
    search_fields = ('name',)


@admin.register(FlightCountStrategy)
class FlightCountStrategyAdmin(admin.ModelAdmin):
    list_display = ('id', 'count')


@admin.register(MilesCountStrategy)
class MilesCountStrategyAdmin(admin.ModelAdmin):
    list_display = ('id', 'count')


@admin.register(RegionalStrategy)
class RegionalStrategyAdmin(admin.ModelAdmin):
    list_display = ('id',)
    raw_id_fields = ('countries',)


@admin.register(Badge)
class BadgeAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'name',
        'description',
        'icon_url',
        'tokens',
        'flight_count_strategy',
        'miles_count_strategy',
        'regional_strategy',
    )
    list_filter = (
        'flight_count_strategy',
        'miles_count_strategy',
        'regional_strategy',
    )
    raw_id_fields = ('users',)
    search_fields = ('name',)


@admin.register(BadgeClaim)
class BadgeClaimAdmin(admin.ModelAdmin):
    list_display = ('id', 'user', 'badge', 'claimed_date')
    list_filter = ('user', 'badge', 'claimed_date')


@admin.register(CountryAttraction)
class CountryAttractionAdmin(admin.ModelAdmin):
    list_display = ('id', 'country', 'attraction')
    list_filter = ('country', 'attraction')
