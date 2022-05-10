import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/custom_appBar_1.dart';

class Article extends StatefulWidget {
  final String title, image;

  const Article(  {required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const CustomAppBar1(
          title: 'Type of Autism',
        ),
        preferredSize: Size(width(context, 1), 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                widget.title,
                style: GoogleFonts.cairo(
                    fontSize: 24, color: blue2, fontWeight: FontWeight.w600),
              ),
            ),
            Center(child: Image.asset('assets/'+ widget.image))
          ],
        ),
      ),
    );
  }
}
