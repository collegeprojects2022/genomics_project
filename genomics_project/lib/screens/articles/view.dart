import 'package:flutter/material.dart';
import 'package:genomics_project/const/size.dart';
import 'package:genomics_project/widgets/custom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/colors.dart';
import '../../widgets/custom_appBar_1.dart';
import 'description_screen.dart';
class TypesOfAutism extends StatefulWidget {
  const TypesOfAutism({Key? key}) : super(key: key);

  @override
  State<TypesOfAutism> createState() => _TypesOfAutismState();
}

class _TypesOfAutismState extends State<TypesOfAutism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white1,
        appBar: PreferredSize(
          child: const CustomAppBar1(
            title: 'Type of Autism',
          ),
          preferredSize: Size(width(context, 1), 50),
        ),
        drawer: const CustomDrawer(),
        body: ListView.builder(
            itemCount: typeOfAutism.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                width: width(context, 1),
                height: height(context, 3.4),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: white1,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10.0,
                        color: white2,
                        spreadRadius: 5,
                        offset: Offset(1, 2)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(typeOfAutism[index]['title'],
                        style: GoogleFonts.cairo(
                            fontSize: 22,
                            color: blue2,
                            fontWeight: FontWeight.w600)
                        //textAlign: TextAlign.left,
                        ),
                    Text(
                      typeOfAutism[index]['info'],
                      style: GoogleFonts.cairo(
                          fontSize: 12.5,
                          color: grey,
                          fontWeight: FontWeight.w600),
                      //textAlign: TextAlign.left,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Article(
                                          title: typeOfAutism[index]['title'],
                                          image: typeOfAutism[index]['image'],
                                        )));
                          },
                          child: Text(
                            'Read more',
                            style: GoogleFonts.cairo(
                                fontSize: 15,
                                color: blue2,
                                fontWeight: FontWeight.w800),
                          )),
                    ),
                  ],
                ),
              );
            }));
  }
}

List<Map<String, dynamic>> typeOfAutism = [
  {
    'title': "Asperger’s Syndrome",
    'info':
        "Asperger’s Syndrome is a developmental disorder. Young people with Asperger’s Syndrome have a difficult time relating to others socially and their behavior and thinking patterns can be rigid and repetitive.",
    'image': 'article1.png'
  },
  {
    'title': "Rett Syndrome",
    'info':
        "Rett syndrome is a rare genetic neurological and developmental disorder that affects the way the brain develops, causing a progressive loss of motor skills and speech. This disorder primarily affects girls.",

    'image': 'article2.png'

  },
  {
    'title': "Kanner’s syndrome",
    'info':
        "Kanner’s syndrome was discovered by psychiatrist Leo Kanner of John Hopkins University in 1943 when he characterized it as infantile autism. Doctors also describe the condition as a classic autistic disorder. ",

    'image': 'article3.png'

  },
  {
    'title': "Childhood Disintegrative Disorder ",
    'info':
        "Childhood disintegrative disorder (CDD), also known as Heller's syndrome or disintegrative psychosis, is a rare disorder. CDD has a relatively late onset and causes regression of previously acquired skills in social",

    'image': 'article4.png'

  },
  {
    'title': "Pervasive developmental disorder",
    'info':
        "Pervasive Developmental Disorder – Not Otherwise Specified (PDD-NOS) is a mild type of autism that presents a range of symptoms.",

    'image': 'article5.png'

  },
];
