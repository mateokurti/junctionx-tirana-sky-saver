from django.db import models

from users.models import User


class Partner(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    image_url = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Reward(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    tokens = models.PositiveSmallIntegerField()
    image_url = models.CharField(max_length=255)
    partner = models.ForeignKey(Partner, on_delete=models.CASCADE, null=True)
    unlimited = models.BooleanField(default=False)

    def __str__(self):
        return self.name


class RewardClaim(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    reward = models.ForeignKey(Reward, on_delete=models.CASCADE)
    claimed_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.user.email} - {self.reward.name}"
