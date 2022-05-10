import 'package:flutter/material.dart';
import 'dart:async';
import 'package:genomics_project/const/size.dart';
import 'package:genomics_project/screens/login_screen/view.dart';
import '../../const/colors.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: white1,
      body: Center(
        child: SizedBox(
          width: width(context, 2.0),
            height: height(context, 2.0),
            child: const Image(image: AssetImage("assets/logo.png"))
        ),
      ),
    );
  }
}
