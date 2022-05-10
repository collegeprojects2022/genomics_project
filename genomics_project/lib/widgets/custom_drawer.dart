import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genomics_project/screens/history_screen/view.dart';
import 'package:genomics_project/screens/profile/view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/size.dart';
import '../screens/articles/view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/user.png',
          height: height(context, 4),
        ),
        const Divider(
          color: lightgrey,
          thickness: 2,
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print(data[index]['Route']);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => data[index]['Route']));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/' + data[index]['icon'],
                        height: 35,
                      ),
                      SizedBox(
                        width: width(context, 10),
                      ),
                      Text(
                        data[index]['title'],
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            color: lightgrey,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              );
            })
      ]),
    );
  }
}

List<Map<String, dynamic>> data = [
  {
    'icon': 'person.png',
    'title': 'Profile',
    'Route': const ProfileScreen(),
  },
  {
    'icon': 'puzzle.png',
    'title': 'Type of autism',
    'Route': const TypesOfAutism(),
  },
  {
    'icon': 'notifications.png',
    'title': 'Notification',
    'Route': const HistoryScreen(),
  },
  {
    'icon': 'setting.png',
    'title': 'Setting',
    'Route': const ProfileScreen(),
  },
  {
    'icon': 'Help.png',
    'title': 'Help',
    'Route': const ProfileScreen(),
  },
];
