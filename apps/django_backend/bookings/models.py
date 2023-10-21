from django.db import models

from users.models import Traveller


class Booking(models.Model):
    booking_reference = models.CharField(max_length=6, primary_key=True)
    user = models.ForeignKey("users.User", on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return self.booking_reference


class Ticket(models.Model):
    ticket_number = models.CharField(max_length=12, primary_key=True)
    ticketing_airline = models.CharField(max_length=2)
    ticket_status = models.CharField(max_length=10)
    issued_date = models.DateField()
    traveller = models.ForeignKey(Traveller, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return self.ticket_number


class BookedSegment(models.Model):
    origin = models.CharField(max_length=3)
    destination = models.CharField(max_length=3)
    flight_number = models.CharField(max_length=6)
    flight_date = models.DateField()
    airline_code = models.CharField(max_length=2)
    departure_date = models.DateTimeField()
    arrival_date = models.DateTimeField()
    booking_class = models.CharField(max_length=20)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    tax_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    ticket = models.ForeignKey(Ticket, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return self.ticket.ticket_number + " " + self.flight_number
