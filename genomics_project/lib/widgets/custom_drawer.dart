import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/size.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({  Key? key}) : super(key: key);

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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
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
  {'icon': 'person.png', 'title': 'Profile'},
  {'icon': 'puzzle.png', 'title': 'Type of autism'},
  {'icon': 'notifications.png', 'title': 'Notification'},
  {'icon': 'setting.png', 'title': 'Setting'},
  {'icon': 'Help.png', 'title': 'Help'},
];
