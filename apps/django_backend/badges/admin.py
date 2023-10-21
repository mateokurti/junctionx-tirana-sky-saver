# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import (
    Attraction,
    Country,
    FlightCountStrategy,
    MilesCountStrategy,
    RegionalStrategy,
    Badge,
    BadgeClaim,
    CountryAttraction,
)
from import_export.admin import ImportExportModelAdmin


@admin.register(Attraction)
class AttractionAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id", "name", "description")
    search_fields = ("name",)


@admin.register(Country)
class CountryAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id", "name", "code", "continent")
    raw_id_fields = ("attractions",)
    search_fields = ("name",)


@admin.register(FlightCountStrategy)
class FlightCountStrategyAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id", "count")


@admin.register(MilesCountStrategy)
class MilesCountStrategyAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id", "count")


@admin.register(RegionalStrategy)
class RegionalStrategyAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id",)
    raw_id_fields = ("countries",)


@admin.register(Badge)
class BadgeAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = (
        "id",
        "name",
        "description",
        "icon_url",
        "tokens",
        "flight_count_strategy_id",
        "miles_count_strategy_id",
        "regional_strategy_id",
    )
    list_filter = (
        "flight_count_strategy_id",
        "miles_count_strategy_id",
        "regional_strategy_id",
    )
    raw_id_fields = ("users",)
    search_fields = ("name",)


@admin.register(BadgeClaim)
class BadgeClaimAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id", "user_id", "badge", "claimed_date")
    list_filter = ("user_id", "badge", "claimed_date")


@admin.register(CountryAttraction)
class CountryAttractionAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = ("id", "country", "attraction")
    list_filter = ("country", "attraction")
