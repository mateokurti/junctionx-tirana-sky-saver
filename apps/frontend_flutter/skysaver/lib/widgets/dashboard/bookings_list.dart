import 'package:flutter/material.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/utils/client.dart';
import 'package:skysaver/widgets/shared/booking.dart';
import 'package:skysaver/widgets/shared/flight.dart';
import 'package:skysaver/widgets/shared/shadow_card.dart';

class BookingsList extends StatefulWidget {
  const BookingsList({super.key});

  @override
  State<BookingsList> createState() => _BookingsListState();
}

class _BookingsListState extends State<BookingsList> {
  bool mine = true;

  List<BookedSegments> flights = [];

  List<Booking> bookings = [];

  @override
  void didChangeDependencies() async {
    final bookingsResp = await apiClient.apiBookingsGet();
    if (bookingsResp.isSuccessful) {
      setState(() {
        bookings = bookingsResp.body?.results ?? [];
      });
    }

    final flightsResp = await apiClient.apiFlightsGet();
    if (flightsResp.isSuccessful) {
      setState(() {
        flights = flightsResp.body?.results ?? [];
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () async {
                  setState(() {
                    mine = false;
                    bookings = [];
                  });
                  final bookingsResp = await apiClient.apiBookingsGet();
                  if (bookingsResp.isSuccessful) {
                    setState(() {
                      bookings = bookingsResp.body?.results ?? [];
                    });
                  }
                },
                child: const Text("Bookings"),
              ),
              const SizedBox(
                height: 20,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              TextButton(
                onPressed: () async {
                  setState(() {
                    mine = true;
                    flights = [];
                  });
                  final flightsResp = await apiClient.apiFlightsGet();
                  if (flightsResp.isSuccessful) {
                    setState(() {
                      flights = flightsResp.body?.results ?? [];
                    });
                  }
                },
                child: const Text("My Flights"),
              )
            ],
          ),
          const Divider(),
            SizedBox(
              height: 250,
              child: ListView.separated(
                itemBuilder: (cntxt, int idx) => mine
                    ? FlightCard(flight: flights[idx])
                    : BookingCard(booking: bookings[idx]),
                itemCount: mine ? flights.length : bookings.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 200, child: Divider());
                },
              ),
            )
        ],
      ),
    );
  }
}
