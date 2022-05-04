import 'package:flutter/material.dart';
import 'package:genomics_project/const/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/size.dart';
import '../../widgets/customAppbar.dart';

class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child:  const CustomAppBar(title: 'Autism Finder',),
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
            height: height(context, 2),
            width: width(context, 1),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: white2, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: height(context, 15),
                        width: width(context, 2.6),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: white,
                            border: Border.all(color: blue1, width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.add,
                              color: blue1,
                            ),
                            Text(
                              'Rett Syndrome',
                              style: GoogleFonts.cairo(
                                  fontSize: 16,
                                  color: blue1,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                    Container(
                        height: height(context, 15),
                        width: width(context, 2.2),
                        decoration: BoxDecoration(
                            color: white,
                            border: Border.all(color: blue1, width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.add,
                              color: blue1,
                            ),
                            Text(
                              'Irregular heartbeat',
                              style: GoogleFonts.cairo(
                                  fontSize: 16,
                                  color: blue1,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  ],
                ),
                // GridView.builder(
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     childAspectRatio: (14/5),
                //
                //
                //   ),
                //   scrollDirection: Axis.vertical,
                //   shrinkWrap: true,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemCount: 5,
                //     itemBuilder: (context, index) {
                //   return Container(
                //     constraints: const BoxConstraints(
                //       maxWidth: 50,
                //       maxHeight: 50
                //     ),
                //
                //     margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                //     decoration: BoxDecoration(
                //         color: Colors.red, borderRadius: BorderRadius.circular(15)),
                //     child: const Text('dddddddd'),
                //   );
                // })
                Wrap(
                 direction: Axis.horizontal,
                  children: [
                    Container(
                      height: 40,
                          // constraints: const BoxConstraints(
                          //   maxWidth: 200,
                          //   maxHeight: 200
                          // ),

                          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.red, borderRadius: BorderRadius.circular(15)),
                          child: const Text('dddddddd'),
                        ), Container(
                          // constraints: const BoxConstraints(
                          //   maxWidth: 50,
                          //   maxHeight: 50
                          // ),

                          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.red, borderRadius: BorderRadius.circular(15)),
                          child: const Text('dddddddd'),
                        ), Container(
                          constraints: const BoxConstraints(
                            maxWidth: 50,
                            maxHeight: 50
                          ),

                          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.red, borderRadius: BorderRadius.circular(15)),
                          child: const Text('dddddddd'),
                        ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
