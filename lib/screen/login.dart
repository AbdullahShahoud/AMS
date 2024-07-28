import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/helper/Routing/rout.dart';
import 'package:playggound1/widget/background_image.dart';

import '../widget/logo.dart';
import 'package:flutter/material.dart';
import '../widget/button.dart';
import '../widget/button_second.dart';
import '../widget/text_feild.dart';
import '../widget/toast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
var controllerEmail;
var controllerPassword;

class _LoginState extends State<Login> {
  @override
  void initState() {
     controllerEmail=TextEditingController();
 controllerPassword=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:BackGroundImage(
        screen: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(image:  'images/logoWite.png'),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextFrom(hint:  ' البريد الالكتروني',ico:Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,controller:controllerEmail, context: context  ),
                     TextFrom(hint:  ' كلمة المرور',ico:Icons.security,
                    keyboardType: TextInputType.number,controller:controllerPassword , context: context ),
                    SizedBox(
                      height: 55.h,
                    ),
                             
                  ]),
                ),
                 buttonHome(text: 'تسجيل الدخول',function: (){
                    Navigator.of(context).pushNamed(Routers.home);
                    showToast('تم تسجيل الدخول بنجاح',toastState.SUCCESS);
            },color: Colors.transparent),
                  SizedBox(
                    height: 30.h,
                  ),
                  ButtonSecond(text: 'هل نسيت كلمة المرور ؟',function:  () {
                    Navigator.of(context).pushNamed(Routers.forgote);
                  })
              ], 
            ),
          ),
        ),
      ),
    );
  }
}
