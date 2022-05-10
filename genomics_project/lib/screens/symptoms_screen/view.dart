// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:genomics_project/const/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/size.dart';
import '../../widgets/custom_appBar_1.dart';
import '../result/view.dart';

class SymptomsScreen extends StatefulWidget {
  SymptomsScreen({Key? key}) : super(key: key);
  late int selected;
  List selectedList = [];
  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}
class _SymptomsScreenState extends State<SymptomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const CustomAppBar1(
          title: 'Symptoms',
        ),
        preferredSize: Size(width(context, 1), 50),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height(context, 16),
          ),
          Image.asset(
            'assets/symptoms.png',
            height: height(context, 4),
            width: width(context, 1),
          ),
          Container(
            height: height(context, 1.8),
            width: width(context, 1),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: white2, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (symptoms[index]['selected'] == true) {
                                setState(() {
                                  symptoms[index]['selected'] = false;
                                });
                              } else {
                                setState(() {
                                  symptoms[index]['selected'] = true;
                                });
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2.5),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2.5),
                              decoration: BoxDecoration(
                                  color: symptoms[index]['selected']
                                      ? white
                                      : blue1,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: blue1)),
                              child: Row(
                                children: [
                                  symptoms[index]['selected']
                                      ? SizedBox()
                                      : Icon(Icons.add, size: 20, color: white),
                                  Text(
                                    symptoms[index]['name'],
                                    style: GoogleFonts.cairo(
                                        fontSize: 16,
                                        color: symptoms[index]['selected']
                                            ? blue2
                                            : white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          symptoms[index]['name1'] == ''
                              ? const SizedBox()
                              : InkWell(
                                  onTap: () {
                                    if (symptoms[index]['selected1'] == true) {
                                      setState(() {
                                        symptoms[index]['selected1'] = false;
                                      });
                                    } else {
                                      setState(() {
                                        symptoms[index]['selected1'] = true;
                                      });
                                    }
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2.5),
                                    decoration: BoxDecoration(
                                        color: symptoms[index]['selected1']
                                            ? white
                                            : blue1,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: blue1)),
                                    child: Row(
                                      children: [
                                        symptoms[index]['selected1']
                                            ? SizedBox()
                                            : Icon(Icons.add,
                                                size: 20, color: white),
                                        Text(
                                          symptoms[index]['name1'],
                                          style: GoogleFonts.cairo(
                                              fontSize: 16,
                                              color: symptoms[index]
                                                      ['selected1']
                                                  ? blue2
                                                  : white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        ],
                      );
                    }),
              ],
            ),
          ),
          MaterialButton(
            child: const Icon(
              Icons.arrow_forward,
              color: white,
              size: 35,
            ),
            color: blue1,
            height: 50,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResultScreen()));
            },
            shape: const CircleBorder(),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> symptoms = [
  {
    'name': 'Rett Syndrome',
    'name1': 'Irregular heartbeat',
    'selected': false,
    'selected1': false
  },
  {
    'name': 'Slowed growth',
    'name1': 'Breathing problems',
    'selected': false,
    'selected1': false
  },
  {
    'name': 'Loss of normal movement and coordination ',
    'name1': '',
    'selected': false,
    'selected1': false
  },
  {
    'name': 'Unusual eye movements',
    'name1': 'scoliosis',
    'selected': false,
    'selected1': false
  },
  {
    'name': 'Cognitive disabilities',
    'name1': 'Seizures problems',
    'selected': false,
    'selected1': false
  },
  {
    'name': 'Loss of communication abilities',
    'name1': '',
    'selected': false,
    'selected1': false
  },
  {
    'name': 'Abnormal hand movements',
    'name1': '',
    'selected': false,
    'selected1': false
  },
];
