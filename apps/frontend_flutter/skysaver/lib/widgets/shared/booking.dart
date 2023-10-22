import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/consts.dart';

final DateFormat shortDate = DateFormat('dd LLLL hh:mm');
final DateFormat monthName = DateFormat('LLLL');

class BookingCard extends StatefulWidget {
  final Booking booking;

  const BookingCard({super.key, required this.booking});

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey.withOpacity(0.5)
                          : Colors.black26.withOpacity(0.5),
                      blurRadius: 8,
                      spreadRadius: -4,
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(0.1, 0.1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "23",
                    // widget.booking.tickets.firstOrNull?.issuedDate.toString() ?? "",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              Text(
                "December",
                // monthName.format(widget.booking.tickets.first.issuedDate),
              ),
            ],
          ),
          // if (widget.booking.tickets.isNotEmpty)
          Column(
            children: [
              Row(
                children: [Text("Booking #${widget.booking.bookingReference}")],
              ),
              Row(
                children: [
                  Text("${widget.booking.tickets.length} travelers"
                      "     \$${widget.booking.totalPrice.toStringAsFixed(0)}")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
