# -*- coding: utf-8 -*-
from django.contrib import admin

from .models import Article, UserArticleInteraction


@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'title',
        'description',
        'content',
        'photo',
        'tokens',
    )


@admin.register(UserArticleInteraction)
class UserArticleInteractionAdmin(admin.ModelAdmin):
    list_display = ('id', 'article', 'user', 'read')
    list_filter = ('article', 'user', 'read')
