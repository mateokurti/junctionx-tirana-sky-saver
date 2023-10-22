import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/widgets/shared/dotted_line.dart';

final DateFormat shortDate = DateFormat('dd LLLL hh:mm');

class FlightCard extends StatelessWidget {
  const FlightCard({super.key, required this.flight});

  final BookedSegments flight;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Container(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  shortDate.format(flight.departureDate),
                ),
                Text(
                  shortDate.format(flight.arrivalDate),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    flight.origin,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: DotWidget(
                          totalWidth: 150,
                          dashHeight: 0.5,
                          dashWidth: 5,
                          emptyWidth: 5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80.0, 0, 0, 0),
                        child: Icon(
                          FontAwesomeIcons.plane,
                          color: now.isBefore(flight.departureDate)
                              ? Colors.green
                              : null,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    flight.destination,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 56.0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(flight.flightNumber)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
