import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../const/size.dart';

class DataItem extends StatelessWidget {
  final String? icon;

  final String? hint;
  final String? label;

  const DataItem(
      {required this.hint, required this.icon, required this.label, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label!,
              style: GoogleFonts.cairo(
                  fontSize: 16, color: lightgrey, fontWeight: FontWeight.bold)),
          Container(
            width: width(context, 1),
            height: 60,
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: lightgrey, width: 2)),
            child: Row(
              children: [
                Image.asset('assets/' + icon!),
                const SizedBox(
                  width: 10,
                ),
                Text(hint!,
                    style: GoogleFonts.cairo(
                        fontSize: 20,
                        color: lightgrey,
                        fontWeight: FontWeight.w600))
              ],
            ),
          )
        ],
      ),
    );
  }
}
