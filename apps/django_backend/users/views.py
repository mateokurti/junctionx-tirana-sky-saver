from django.contrib.auth import get_user_model
from rest_framework import status
from rest_framework.decorators import action
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework.viewsets import GenericViewSet

from bookings.models import BookedSegment
from bookings.serializers import BookedSegmentsSerializer
from users.serializers import UserAccountSerializer

User = get_user_model()


class UserViewSet(RetrieveModelMixin, ListModelMixin, UpdateModelMixin, GenericViewSet):
    serializer_class = UserAccountSerializer
    queryset = User.objects.all()
    permission_classes = (AllowAny,)

    def get_queryset(self, *args, **kwargs):
        if self.request.user.is_authenticated:
            return self.queryset.filter(id=self.request.user.id)
        return self.queryset.none()

    @action(detail=False)
    def me(self, request):
        serializer = UserAccountSerializer(request.user, context={"request": request})
        return Response(status=status.HTTP_200_OK, data=serializer.data)

    @action(detail=False, methods=["GET"])
    def flights(self, request):
        """
        All booked_segments where booked_segment.traveller.user is the current user
        """

        serializer = BookedSegmentsSerializer(BookedSegment.objects.filter(traveller__user=request.user), many=True)
        return Response(status=status.HTTP_200_OK, data=serializer.data)
