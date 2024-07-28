import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/widget/background_image.dart';
import 'package:playggound1/widget/text_feild.dart';

import '../widget/button.dart';
import '../widget/logo.dart';
import 'package:flutter/material.dart';

class Singin extends StatefulWidget {
  @override
  State<Singin> createState() => _SinginState();
}
var controllerEmail;
var controllerPassword;
var controllerFirstName;
var controllerSecondName;
var controllerage;
class _SinginState extends State<Singin> {
 
 void initState() {
     controllerEmail=TextEditingController();
 controllerPassword=TextEditingController();
  controllerFirstName=TextEditingController();
 controllerSecondName=TextEditingController();
 controllerage=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BackGroundImage(
        screen: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Logo(image:  'images/logoWite.png'),
              ),
              Form(
                child: Column(
                children:[
       TextFrom(hint:'الاسم الاول',ico:Icons.person,controller:controllerFirstName,
                            keyboardType: TextInputType.name, context: context),
                            TextFrom(hint:'الاسم الثاني',ico:Icons.person,controller:controllerSecondName,
                            keyboardType: TextInputType.name, context: context),
                            TextFrom(hint:'العمر',ico:Icons.calendar_month,controller:controllerage,
                            keyboardType: TextInputType.name, context: context),
                            TextFrom(hint:'البريد الالكتروني',ico:Icons.email_outlined,controller:controllerEmail,
                            keyboardType: TextInputType.name, context: context),
                            TextFrom(hint:'كلمة المرور',ico:Icons.security,controller:controllerPassword,
                            keyboardType: TextInputType.name, context: context),
                ]
              )), 
                            SizedBox(
                              height: 70.h,
                            ),
                  buttonHome(text: ' إنشاء حساب',function: (){
                            Navigator.of(context).pushNamed('home');
                  },color: Colors.transparent),
            ]),
          ),
        ),
      ),
    );
  }
}
