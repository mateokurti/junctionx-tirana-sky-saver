import 'package:flutter/material.dart' hide Page;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:skysaver/models/page.dart';
import 'package:skysaver/pages/dashboard.dart';
import 'package:skysaver/pages/flights.dart';
import 'package:skysaver/pages/rewards.dart';
import 'package:skysaver/widgets/transitions/fade_stack.dart';

final pages = <Page>[
  Page(
    name: "Dashboard",
    title: "Dashboard",
    page: const DashboardPage(),
    icon: Icons.home,
    color: Colors.blue,
  ),
  Page(
    name: "Flights",
    title: "Achievements",
    page: const Flights(),
    icon: FontAwesomeIcons.earth,
    color: Colors.orange,
  ),
  Page(
    name: "Rewards",
    title: "Rewards",
    page: const RewardsPage(),
    icon: FontAwesomeIcons.gift,
    color: Colors.pink,
  )
];

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;
  final pageList = pages.map((e) => e.page).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[pageIndex].title),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: pageIndex,
        onTap: (i) {
          setState(() {
            pageIndex = i;
          });
        },
        items: pages
            .map(
              (e) => SalomonBottomBarItem(
                icon: Icon(e.icon),
                title: Text(e.name),
                selectedColor: e.color,
              ),
            )
            .toList(),
      ),
      body: FadeIndexedStack(
        index: pageIndex,
        duration: const Duration(milliseconds: 400),
        children: pageList,
      ),
    );
  }
}
