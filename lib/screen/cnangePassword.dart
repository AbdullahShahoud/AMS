import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/widget/background_image.dart';
import 'package:playggound1/widget/text_feild.dart';

import '../widget/button.dart';
import '../widget/logo.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}
var controllerNewPassword;
var controllerSurPassword;


class _ChangePasswordState extends State<ChangePassword> {
    @override
  void initState() {
     controllerNewPassword=TextEditingController();
 controllerSurPassword=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BackGroundImage(
      screen: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width -20,
          height: 500.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40)
           ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Logo(image:  'images/logoWite.png'),
            TextFrom(hint:'كلمة المرور الجديدة',ico:Icons.person,controller:controllerNewPassword,
                  keyboardType: TextInputType.number, context: context),
                  TextFrom(hint:'تأكيد كلمة المرور ',ico:Icons.person,controller:controllerSurPassword,
                  keyboardType: TextInputType.number, context: context),
            SizedBox(
              height: 40.h,
            ),
            buttonHome(text: 'حفظ',function: (){
                  Navigator.of(context).pushNamed('home');
            },color: Colors.transparent),
                
          ]),
        ),
      ),
    );
  }
}
