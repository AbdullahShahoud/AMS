import 'package:playggound1/widget/background_image.dart';

import '../helper/Routing/rout.dart';
import '../widget/button.dart';
import '../widget/logo.dart';
import 'package:flutter/material.dart';

import '../widget/text_feild.dart';

class Forgot_password extends StatefulWidget {
  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}
var controllerEmail;
class _Forgot_passwordState extends State<Forgot_password> {
   @override
  void initState() {
     controllerEmail=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundImage(
        screen: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Logo(image:  'images/logoWite.png'),
           TextFrom(hint:'البريد الالكتروني',ico:Icons.email_outlined,controller:controllerEmail,
                    keyboardType: TextInputType.emailAddress, context: context),
          SizedBox(
            height: 40,
          ),
          buttonHome(text: 'ارسال الرمز',function: (){
          Navigator.of(context).pushNamed(Routers.home);
          },color: Colors.transparent),
        ]),
      ),
    );
  }
}
