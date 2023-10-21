from rest_framework import serializers

from articles.models import Article, UserArticleInteraction


class UserArticleInteractionSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserArticleInteraction
        fields = (
            "id",
            "read",
        )

    def create(self, validated_data):
        return UserArticleInteraction.objects.get_or_create(**validated_data)


class ArticleSerializer(serializers.ModelSerializer):
    interactions = UserArticleInteractionSerializer(
        many=True,
        read_only=False,
    )

    class Meta:
        model = Article
        fields = "__all__"
