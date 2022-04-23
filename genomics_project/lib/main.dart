import 'package:flutter/material.dart';
import 'package:genomics_project/screens/splach_screen/view.dart';
void main()=>  runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      )
    );
  }
}
