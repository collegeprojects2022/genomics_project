import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genomics_project/const/size.dart';
import 'package:genomics_project/screens/symptoms_screen/view.dart';
import 'package:genomics_project/widgets/customAppbar.dart';
import 'package:genomics_project/widgets/custom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool uploaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const CustomAppBar(
          title: 'Autism Finder',
        ),
        preferredSize: Size(width(context, 1), 50),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ImageIcon(
              const AssetImage('assets/file.png'),
              size: height(context, 5),
              color: lightBlue,
            ),
          ),
          InkWell(
            onTap: () async {
              var  result = await FilePicker.platform.pickFiles();
              setState(() {
                if(result!.paths.isNotEmpty){
                  uploaded = true;
                }
                else {
                  uploaded = false;
                }
                //uploaded = true;
              });
              if (kDebugMode) {
                print('-------------------------------');
                print(uploaded);
                print('-------------------------------');
                print(result!.files.first.path);
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: width(context, 2.3),
              height: 45,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: blue2,
                borderRadius: BorderRadius.circular(7.5),
              ),
              child: Text(
                'upload file',
                style: GoogleFonts.cairo(
                    fontSize: 22, color: white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          if (uploaded == true)
            Container(
              alignment: Alignment.center,
              width: width(context, 1.2),
              height: 70,
              // margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: blue1, width: 2.5),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '.fastq',
                          style: GoogleFonts.cairo(
                              fontSize: 10,
                              color: blue2,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Autism file.fastq',
                        style: GoogleFonts.cairo(
                            fontSize: 16,
                            color: blue2,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  SymptomsScreen()));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: blue1,
                          border: Border.all(color: blue1, width: 2.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: white,
                          size: 30,
                        )),
                  ),
                ],
              ),
            )
          else
            Container(
              alignment: Alignment.center,
              width: width(context, 1.3),
              height: 70,
              // margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Text(
                'Upload files with extensions fastq',
                style: GoogleFonts.cairo(
                    fontSize: 20, color: grey, fontWeight: FontWeight.w400),
              ),
            ),
        ],
      ),
    );
  }
}

