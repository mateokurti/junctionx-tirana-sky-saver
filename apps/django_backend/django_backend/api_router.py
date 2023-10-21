from django.conf import settings
from rest_framework.routers import DefaultRouter, SimpleRouter

from users.views import UserViewSet
from articles.views import ArticleViewSet

router = DefaultRouter() if settings.DEBUG else SimpleRouter()
router.register("users", UserViewSet)
router.register("articles", ArticleViewSet)

app_name = "api"

urlpatterns = router.urls
