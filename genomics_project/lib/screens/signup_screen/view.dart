// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:genomics_project/const/size.dart';
import 'package:genomics_project/screens/instructions_screen/view.dart';
import 'package:genomics_project/screens/signup_screen/model.dart';
import 'package:genomics_project/widgets/Text_Field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SetData _data = SetData();

  // ignore: prefer_typing_uninitialized_variables
  var dropVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: grey2)),
        elevation: 0,
        backgroundColor: white1,
        title: Text("Registration..",
            style: GoogleFonts.cairo(
                fontSize: 29, color: grey2, fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //first and last name text field
              Row(
                children: [
                  SizedBox(
                    width: width(context, 2),
                    height: height(context, 8.0),
                    child: CustomTextField(
                      hint: 'First Name',
                      icon: Icons.person,
                      secure: false,
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return 'please enter your First name ';
                        }
                        return null;
                      },
                      onChange: (val) {
                        _data.firstName = val;
                      },
                    ),
                  ),
                  SizedBox(
                    width: width(context, 2),
                    height: height(context, 8.0),
                    child: CustomTextField(
                      hint: 'Last Name',
                      icon: Icons.person,
                      secure: false,
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return 'please enter your last name ';
                        }
                        return null;
                      },
                      onChange: (val) {
                        _data.lastName = val;
                      },
                    ),
                  )
                ],
              ),
              //date text field
              CustomTextField(
                hint: 'DD/MM/YY',
                icon: Icons.date_range_rounded,
                secure: false,
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return 'please enter your Birthday ';
                  }
                  return null;
                },
                onChange: (val) {
                  _data.date = val;
                },
              ),
              CustomTextField(
                hint: 'Phone',
                icon: Icons.call,
                secure: false,
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return 'please enter your phone ';
                  }
                  return null;
                },
                onChange: (val) {
                  _data.phone = val;
                },
              ),
              //phone text field
              //gender drop down
              Container(
                height: height(context, 10),
                width: width(context, 1),
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: white2,
                    border: Border.all(color: grey2, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonFormField<String>(
                      value: dropVal,
                      iconSize: 40,
                      hint: const Text(
                        "Gender",
                        style: TextStyle(color: lightgrey),
                      ),
                      decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        prefixIcon: ImageIcon(AssetImage('assets/gender.png')),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          _data.gender = newValue;
                        });
                      },
                      items: <String>["Female", "Male"]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          child: Text(value),
                          value: value,
                        );
                      }).toList()),
                ),
              ),
              //email text field
              CustomTextField(
                hint: 'Email',
                icon: Icons.alternate_email_rounded,
                secure: false,
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return 'please enter your email ';
                  }
                  return null;
                },
                onChange: (val) {
                  _data.email = val;
                },
              ),
              //password Text field
              CustomTextField(
                hint: 'Password',
                icon: Icons.lock,
                secure: true,
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return 'please enter your password ';
                  }
                  return null;
                },
                onChange: (val) {
                  _data.password = val;
                },
              ),
              //confirmation text field

              CustomTextField(
                hint: 'Confirm Password',
                icon: Icons.lock,
                secure: true,
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return 'please enter your password ';
                  }
                  return null;
                },
                onChange: (val) {
                  _data.confimPassword = val;
                },
              ),
              //register button
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _data.saveData(
                        password: _data.password!,
                        email: _data.email!,
                        firstname: _data.firstName!,
                        lastname: _data.lastName!,
                        gender: _data.gender!,
                        date: _data.date!,
                        phone: _data.phone!);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Instructions()));
                  }
                },
                child: Container(
                  width: width(context, 2),
                  height: height(context, 13.0),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: blue2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              // Image.asset("assets/or.png"),
              //another options to signup
              SizedBox(
                width: width(context, 1.5),
                height: height(context, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: blue2,
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: blue2,
                        child: FaIcon(
                          FontAwesomeIcons.google,
                          color: white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.facebook_sharp,
                        color: blue2,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
