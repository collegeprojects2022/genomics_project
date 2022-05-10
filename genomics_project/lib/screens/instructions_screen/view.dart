import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import '../../const/colors.dart';
import '../navigation/view.dart';

class Instructions extends StatefulWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  State<Instructions> createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  List<Slide> slides = [];

  void onDonePress() {
    // Do what you want
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const NavigationScreen()));
    if (kDebugMode) {
      print("End of slides");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(Slide(
      backgroundColor: white1,
      marginTitle: const EdgeInsets.symmetric(horizontal: 10),
      widgetTitle: Image.asset('assets/inst1.png'),
      centerWidget: Text("Rett Syndrome",
          style: GoogleFonts.cairo(
              fontSize: 35, color: blue2, fontWeight: FontWeight.w800)),
      styleDescription: GoogleFonts.cairo(
          fontSize: 15, color: blue2, fontWeight: FontWeight.w600),
      marginDescription:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      description:
          "is a severe X-linked dominant neurodevelopmental disorder that typically affects girls and is characterized by regression of spoken language, loss of hand use, problems with ambulation, and development of repetitive hand stereotypies.",
    ));
    slides.add(Slide(
      backgroundColor: white1,
      marginTitle: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      widgetTitle: Image.asset(
        'assets/inst2.png',
        height: 300,
      ),
      centerWidget: Text("What Is Autism",
          style: GoogleFonts.cairo(
              fontSize: 35, color: blue2, fontWeight: FontWeight.w800)),
      styleDescription: GoogleFonts.cairo(
          fontSize: 15, color: blue2, fontWeight: FontWeight.w600),
      marginDescription:
          const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      description:
          "Autism is a wide range or spectrum of brain disorders that is usually noticed in young children. Autism is also referred to as Autism Spectrum Disorder or ASD. Autism decreases the individual's ability to communicate and relate emotionally to others. This disability may range from mild to severe. Autism occurs about four to five times more often in boys than girls",
    ));
    slides.add(Slide(
      backgroundColor: white1,
      marginTitle: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      widgetTitle: Image.asset(
        'assets/inst3.png',
        height: 300,
      ),
      centerWidget: Text("Solution",
          style: GoogleFonts.cairo(
              fontSize: 35, color: blue2, fontWeight: FontWeight.w800)),
      styleDescription: GoogleFonts.cairo(
          fontSize: 15, color: blue2, fontWeight: FontWeight.w600),
      marginDescription:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      description:
          "By detecting if the gene (MECP2) mutated or not by comparing the referenced gene with the input and the result will be positive or negative.",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroSlider(
      slides: slides,
      colorDot: lightBlue,
      colorActiveDot: blue1,
      // showDoneBtn: true,
      // showNextBtn: true,
      // showPrevBtn: true,
      // showSkipBtn: true,
      renderSkipBtn: const Text(
        'Skip',
        style: TextStyle(color: blue2),
      ),
      renderNextBtn: const Text(
        'Next',
        style: TextStyle(color: blue2),
      ),
      renderDoneBtn: const Text(
        'Finish',
        style: TextStyle(color: blue2),
      ),
      onSkipPress: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const NavigationScreen()));
      },

      onDonePress: onDonePress,
    ));
  }
}
