from rest_framework import permissions, viewsets

from badges.models import Badge
from badges.serializers import BadgeSerializer


class BadgeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows badges to be viewed or edited.
    """

    queryset = Badge.objects.all()
    serializer_class = BadgeSerializer
    permission_classes = [permissions.IsAuthenticated]
