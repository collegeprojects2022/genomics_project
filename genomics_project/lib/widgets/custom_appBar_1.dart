// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class CustomAppBar1 extends StatefulWidget {
  final String title;

  const CustomAppBar1({ required this.title ,Key? key}) : super(key: key);

  @override
  State<CustomAppBar1> createState() => _CustomAppBar1State();
}

class _CustomAppBar1State extends State<CustomAppBar1> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: blue1,
      centerTitle: true,
      title: Text(widget.title,
          style: GoogleFonts.cairo(
              fontSize: 25, color: white, fontWeight: FontWeight.w600)),
    );
  }
}
