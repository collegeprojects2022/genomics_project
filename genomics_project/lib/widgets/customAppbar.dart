// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class CustomAppBar extends StatefulWidget {
   final String? title;

  const CustomAppBar({required this.title, Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const ImageIcon(AssetImage('assets/Menu.png')),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      backgroundColor: blue1,
      centerTitle: true,
      title: Text(widget.title!,
          style: GoogleFonts.cairo(
              fontSize: 25, color: white, fontWeight: FontWeight.w600)),
    );
  }
}
