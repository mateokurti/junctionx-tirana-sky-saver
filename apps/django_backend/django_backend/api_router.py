from django.conf import settings
from rest_framework.routers import DefaultRouter, SimpleRouter

from badges.views import BadgeViewSet
from bookings.views import BookingViewSet
from rewards.views import RewardViewSet
from users.views import UserViewSet
from articles.views import ArticleViewSet

router = DefaultRouter() if settings.DEBUG else SimpleRouter()
router.register("users", UserViewSet)
router.register("bookings", BookingViewSet)
router.register("badges", BadgeViewSet)
router.register("articles", ArticleViewSet)
router.register("rewards", RewardViewSet)

app_name = "api"

urlpatterns = router.urls
