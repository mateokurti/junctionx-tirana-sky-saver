import 'package:flutter/material.dart';
import 'package:skysaver/widgets/dashboard/badges_widget.dart';
import 'package:skysaver/widgets/dashboard/bookings_list.dart';
import 'package:skysaver/widgets/dashboard/user_profile.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserProfile(),
        BadgesWidget(),
        BookingsList(),
      ],
    );
  }
}
