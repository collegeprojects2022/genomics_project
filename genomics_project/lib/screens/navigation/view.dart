import 'package:flutter/material.dart';
import 'package:genomics_project/screens/home_screen/view.dart';
import 'package:genomics_project/screens/notification_screen/view.dart';
import 'package:genomics_project/screens/splach_screen/view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;
  List screen = [
    const HomeScreen(),
    const NotificationScreen(),
    const SplashScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            backgroundColor: blue1,
            selectedItemColor: white,
            iconSize: 30,
            unselectedItemColor: lightBlue,
            unselectedLabelStyle: GoogleFonts.cairo(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
            selectedLabelStyle: GoogleFonts.cairo(
                fontSize: 12, color: white, fontWeight: FontWeight.bold),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
