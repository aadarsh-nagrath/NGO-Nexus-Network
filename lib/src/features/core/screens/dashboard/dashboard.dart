// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vyasa/src/constants/colors.dart';
import 'package:vyasa/src/features/core/screens/dashboard/donate_screen.dart';
import 'package:vyasa/src/features/core/screens/dashboard/home_screen.dart';
import 'package:vyasa/src/features/core/screens/events/event.dart';
import 'package:vyasa/src/features/core/screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    EventPage(),
    DonateNow(),
    Scaffold(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       currentTab = 2;
      //     });
      //   },
      //   shape: const CircleBorder(),
      //   backgroundColor: primaryColor,
      //   child: const Icon(
      //     Iconsax.home,
      //     color: Colors.white,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => setState(() {
                currentTab = 0;
              }),
              icon: Icon(
                Ionicons.home_sharp,
                color: currentTab == 0 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 1;
              }),
              icon: Icon(
                Ionicons.grid_outline,
                color: currentTab == 1 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 2;
              }),
              icon: Icon(
                Ionicons.caret_up_circle_outline,
                color: currentTab == 2 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 3;
              }),
              icon: Icon(
                Ionicons.hand_right_outline,
                color: currentTab == 3 ? primaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 4;
              }),
              icon: Icon(
                Ionicons.person_outline,
                color: currentTab == 4 ? primaryColor : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
