from django.contrib.auth import get_user_model
from django.db import models

User = get_user_model()


class Article(models.Model):
    title = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    content = models.TextField()

    tokens = models.PositiveSmallIntegerField()


class UserArticleInteraction(models.Model):
    article = models.ForeignKey(to=Article, on_delete=models.CASCADE)
    user = models.ForeignKey(to=User, on_delete=models.CASCADE)

    read = models.BooleanField(default=False)
