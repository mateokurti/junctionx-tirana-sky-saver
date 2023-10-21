from django.db import models

from users.models import User


class Attraction(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Country(models.Model):
    class Continent(models.TextChoices):
        AS = "AS", "Asia"
        EU = "EU", "Europe"
        NA = "NA", "North America"
        SA = "SA", "South America"
        AF = "AF", "Africa"
        OC = "OC", "Oceania"

    name = models.CharField(max_length=255)
    code = models.CharField(max_length=2)
    continent = models.CharField(max_length=2, choices=Continent.choices)

    attractions = models.ManyToManyField(Attraction, through='CountryAttraction')

    def __str__(self):
        return self.name


class FlightCountStrategy(models.Model):
    count = models.IntegerField()

    class Meta:
        verbose_name_plural = "Flight Count Strategies"


class MilesCountStrategy(models.Model):
    count = models.IntegerField()

    class Meta:
        verbose_name_plural = "Miles Count Strategies"


class RegionalStrategy(models.Model):
    countries = models.ManyToManyField(Country)

    class Meta:
        verbose_name_plural = "Regional Strategies"


class Badge(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    icon_url = models.CharField(max_length=255)
    tokens = models.PositiveSmallIntegerField()
    flight_count_strategy = models.ForeignKey(FlightCountStrategy, on_delete=models.CASCADE, null=True)
    miles_count_strategy = models.ForeignKey(MilesCountStrategy, on_delete=models.CASCADE, null=True)
    regional_strategy = models.ForeignKey(RegionalStrategy, on_delete=models.CASCADE, null=True)
    users = models.ManyToManyField(User, through='BadgeClaim')

    def __str__(self):
        return self.name


class BadgeClaim(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    badge = models.ForeignKey(Badge, on_delete=models.CASCADE)
    claimed_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.user) + " " + str(self.badge) + " " + str(self.claimed_date)


class CountryAttraction(models.Model):
    country = models.ForeignKey(Country, on_delete=models.CASCADE)
    attraction = models.ForeignKey(Attraction, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.country) + " " + str(self.attraction)
