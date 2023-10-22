# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import Partner, Reward, RewardClaim


@admin.register(Partner)
class PartnerAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'description', 'image_url')
    search_fields = ('name',)


@admin.register(Reward)
class RewardAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'name',
        'description',
        'tokens',
        'image_url',
        'partner',
        'unlimited',
    )
    list_filter = ('partner', 'unlimited')
    search_fields = ('name',)


@admin.register(RewardClaim)
class RewardClaimAdmin(admin.ModelAdmin):
    list_display = ('id', 'user', 'reward', 'claimed_at')
    list_filter = ('user', 'reward', 'claimed_at')
