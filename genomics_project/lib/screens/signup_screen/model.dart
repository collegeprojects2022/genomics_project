import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genomics_project/screens/instructions_screen/view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetData {
   String  ? firstName, lastName, date, phone, gender, email, password, confimPassword;
 SetData({
   this.email,
  this.firstName,
   this.lastName,
   this.date,
   this.phone,
   this.gender,
   this.password,
  this.confimPassword,
});
   saveData(
       {
         required String password,
         required String email,
         required String firstname,
         required String lastname,
         required String gender,
         required String date,
         required String phone}) async {
     SharedPreferences preferences = await SharedPreferences.getInstance();
     preferences.setString('fName', firstname);
     preferences.setString('lName', lastname);
     preferences.setString('gender', gender);
     preferences.setString('date', date);
     preferences.setString('password', password);
     preferences.setString('email', email);
     preferences.setString('phone', phone);
     if (kDebugMode) {
       print('success');
     }
   }
   getData({required String emailUser, required String passwordUser, required BuildContext context}) async {
     SharedPreferences preferences = await SharedPreferences.getInstance();
     email = preferences.getString('email')!;
     password = preferences.getString('password')!;
     if (email == emailUser && password == passwordUser) {
       Navigator.push(
           context, MaterialPageRoute(builder: (context) => const Instructions()));
     }
     else if(email!= emailUser){
       AwesomeDialog(
           context: context,
           title: "Warning",
           dialogType: DialogType.ERROR,
           body: const Text("invalid email"))
           .show();
       if (kDebugMode) {
         print('faillllllllllll');
       }
     }
     else if(password!= passwordUser){
       AwesomeDialog(
           context: context,
           title: "Warning",
           dialogType: DialogType.ERROR,
           body: const Text("invalid password"))
           .show();
       if (kDebugMode) {
         print('faillllllllllll');
       }
     }
     if (kDebugMode) {
       print('suceesss');
     }
   }

}
