import 'package:flutter/material.dart';
import 'package:skysaver/widgets/flights/map_stats.dart';
import 'package:skysaver/widgets/flights/news/news.dart';
import 'package:skysaver/widgets/flights/world_map.dart';

class Flights extends StatefulWidget {
  const Flights({super.key});

  @override
  State<Flights> createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // MapStats(),
        Expanded(child: WorldMap()),
        Center(
          child: Text("News"),
        ),
        NewsList(),
      ],
    );
  }
}
