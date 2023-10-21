from django.db.models import Prefetch
from rest_framework import status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet

from articles.models import UserArticleInteraction, Article
from articles.serializers import ArticleSerializer


class ArticleViewSet(ModelViewSet):
    serializer_class = ArticleSerializer
    queryset = Article.objects.all()

    def get_queryset(self):
        return self.queryset.prefetch_related(
            Prefetch(
                lookup="userarticleinteraction_set",
                queryset=UserArticleInteraction.objects.filter(user=self.request.user),
                to_attr="interactions",
            ),
        )

    @action(detail=True, methods=("POST",))
    def mark_read(self, request, pk=None):
        uai, _ = UserArticleInteraction.objects.get_or_create(
            user=self.request.user,
            article_id=pk,
        )

        uai.read = True
        uai.save()
        return Response(
            {},
            status=status.HTTP_201_CREATED,
        )
