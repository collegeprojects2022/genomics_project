import 'package:flutter/material.dart';
import 'package:genomics_project/const/size.dart';
import 'package:genomics_project/widgets/custom_appBar_1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../../const/colors.dart';
import 'modle.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Future<Result> getData() async {
    String url = 'http://10.0.2.2:5000/';
    var response = await http.get(Uri.parse(url));
    var jsonString = response.body;
    Result result = resultFromJson(jsonString);
    print(jsonString);
    return result;
  }
  TextStyle style =  GoogleFonts.cairo(
      fontSize: 22,
      height: 1.5,
      color: blue1,
      fontWeight: FontWeight.w700);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white1,
        appBar: PreferredSize(
            child: const CustomAppBar1(
              title: 'Result',
            ),
            preferredSize: Size(width(context, 1), 50)),
        body: FutureBuilder<Result>(
          future: getData(),
          builder: (context, snapshot) {
            snapshot.data?.result.substring(1, 5);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Image.asset('assets/eye.png'));
            }
            if (snapshot.hasData) {
              String r = snapshot.data!.result.substring(1, 5);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset('assets/result_text.png'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: width(context, 2.5),
                    decoration: BoxDecoration(
                      color: blue1,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 25),
                    child: Text(
                        '0' + r + '/ 1.0',
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            color: white,
                            fontWeight: FontWeight.w700)),
                  ),
                  r == '.666'
                      ? Text("You probably have the gene of \n Rett syndrome ",
                      textAlign: TextAlign.center, style: style)
                      : r == '.820'
                      ? Text(
                      "You unfortunately have the gene of \n Rett syndrome ",
                      textAlign: TextAlign.center,
                      style: style)
                      : Text("You don't have the gene of Rett syndrome ",
                      textAlign: TextAlign.center, style: style),
                  SizedBox(
                    height: height(context, 12),
                  ),
                  Image.asset(
                    'assets/result.png',
                    height: height(context, 2.5),
                  ),
                ],
              );
            }
            return Center(child: Image.asset('assets/eye.png'));
          },
        ));
  }
}
