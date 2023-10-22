from django.shortcuts import render

from rewards.models import Reward
from rewards.serializers import RewardSerializer
from rest_framework import viewsets, permissions


class RewardViewSet(viewsets.ModelViewSet):
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer
    permission_classes = [permissions.IsAuthenticated]
