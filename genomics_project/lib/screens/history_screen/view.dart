import 'package:flutter/material.dart';
import 'package:genomics_project/const/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/size.dart';
import '../../widgets/customAppbar.dart';
import '../../widgets/custom_drawer.dart';
import '../result/view.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const CustomAppBar(
          title: 'History',
        ),
        preferredSize: Size(width(context, 1), 50),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        // Center(child: Image.asset('assets/h.png',color: white2,))
        Container(
        height: 80,
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: blue1),
        ),
        child: ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultScreen()));
          },
            title: Text('Rett syndrome', style: GoogleFonts.cairo(
                fontSize: 20, color: blue2, fontWeight: FontWeight.w700)),
            subtitle: Text('#1' , style: GoogleFonts.cairo(
                fontSize: 16, color: grey, fontWeight: FontWeight.w600)),
      trailing: Image.asset('assets/result.png'),
    ))]
    ,
    )
    ,
    );
  }
}
