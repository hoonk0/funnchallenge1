import 'package:flutter/material.dart';
import 'package:funnchallenge/tab/about_tab.dart';
import 'package:funnchallenge/tab/home_tab.dart';
import 'package:funnchallenge/tab/league_tab.dart';

import '../const/value/colors.dart';
import '../screen/user_information.dart';

class RouteMain extends StatefulWidget {
  const RouteMain({super.key});

  @override
  State<RouteMain> createState() => _RegisterUnder14State();
}

class _RegisterUnder14State extends State<RouteMain> {
  final ValueNotifier<int> vnTabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserInformation()),
                  );
                },
                icon: const Icon(Icons.person_2_outlined),
                color: colorWhite,
              ),
              IconButton(
                onPressed: () async {
                  // Need to make drawer menu
                },
                icon: const Icon(Icons.menu),
                color: colorWhite,
              ),
            ],
          ),
        ],
      ),

      body:
      ValueListenableBuilder(
        valueListenable: vnTabIndex,
        builder: (context, index, child) {
          if (index == 0) {
            return const HomeTab();
          }
          if (index == 1) {
            return const AboutTab();
          }
          return const LeagueTab();
        },
      ),
      bottomNavigationBar: Row(
        children: List.generate(
          3,
              (index) => Expanded(
              child: GestureDetector(
                onTap: () {
                  vnTabIndex.value = index;
                },
                child: Container(
                  color: Colors.transparent,
                  child: Icon(
                    _getTabIcon(index),
                    color: vnTabIndex.value == index ? Colors.blue : Colors.white),
                ),
              )
              ),
        ),
      ),

    );
  }
}

IconData _getTabIcon(int index) {
  switch (index) {
    case 0:
      return Icons.home;
    case 1:
      return Icons.info;
    case 2:
      return Icons.sports_soccer;
    default:
      return Icons.home;
  }
}
