import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/widget/background_image.dart';

import '../widget/button.dart';
import '../widget/button_second.dart';
import '../widget/logo.dart';
import 'package:flutter/material.dart';

import '../widget/text_feild.dart';

class Code extends StatefulWidget {
  const Code({super.key});

  @override
  State<Code> createState() => _CodeState();
}
var controllerCode;

class _CodeState extends State<Code> {
    @override
  void initState() {
     controllerCode=TextEditingController();
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
          Logo(),
           TextFrom(hint:'ادخل رمز التحقق',ico:Icons.textsms_outlined,controller:controllerCode,
                keyboardType: TextInputType.number, context: context),
          SizedBox(
            height: 30.h,
          ),
        buttonHome(text: 'تحقق',function: (){
                Navigator.of(context).pushNamed('home');       
        },color: Colors.transparent),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonSecond(text: 'إعادة إرسال الرمز ؟ ',function:  () {}),
              ButtonSecond(text: 'اتصال ؟',function: () {})
            ],
          )
        ]),
      ),
    );
  }
}
