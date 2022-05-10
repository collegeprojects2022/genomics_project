import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/size.dart';

class SubmitButton extends StatelessWidget {
  final String text;

  final Function onTap;

  const SubmitButton({ required this.text, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: width(context, 2),
        height: height(context, 13.0),
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: blue2,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.cairo(
                fontSize: 25,
                color: white,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    )

    ;
  }
}
