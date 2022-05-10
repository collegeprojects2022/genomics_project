import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genomics_project/const/size.dart';
import 'package:genomics_project/screens/profile/data_item.dart';
import 'package:genomics_project/screens/profile/profile_image.dart';
import 'package:genomics_project/screens/signup_screen/model.dart';
import 'package:genomics_project/widgets/customAppbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/custom_drawer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  SetData data = SetData();
    String ? fName , lName , date , phone , gender;
  getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    fName = preferences.getString('fName')!;
    lName = preferences.getString('lName')!;
    date = preferences.getString('date')!;
    phone = preferences.getString('phone')!;
    gender = preferences.getString('gender')!;
    if (kDebugMode) {
      print(preferences.getString('gender')!);
    }
    setState(() {
    });
  }
 @override
 void initState()  {
    // TODO: implement initState
    super.initState();
     getData();
    setState(() {});
    if (kDebugMode) {
      print(lName);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: const CustomAppBar(title: 'Profile'),
          preferredSize: Size(width(context, 1), 50)),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: height(context, 35),
          ),
          const ProfileImage(),
           DataItem(hint: fName! + lName!, label: 'Name', icon: 'profile.png'),
           DataItem(
              hint: date!, label: 'Birthday', icon: 'calendar.png'),
           DataItem(hint: phone!, label: 'Phone', icon: 'phone.png'),
           DataItem(hint: gender!, label: 'Gender', icon: 'gender.png'),
        ],
      ),
    );
  }
}
