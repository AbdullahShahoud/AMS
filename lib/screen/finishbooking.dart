// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/Routing/rout.dart';
import '../helper/style/text_style.dart';
import '../widget/button.dart';
import '../widget/logo.dart';

class FinishBooking extends StatelessWidget {
  const FinishBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Logo(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                    height: 300.h,
                    width: 300.w,
                    image: AssetImage(
                        'images/ImageSuccess.png')),
              ),
              Center(
                  child: Text( 'رقم التواصل 0900000000 \nAMS GOAL تم الحجز بنجاح نشكر استخدامكم تطبيق ',
                    textAlign: TextAlign.center,
                    style: TextStyles.media.copyWith(color:Theme.of(context).primaryColor ),
                    )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child:buttonHome(text:  'تم',function: (){
              Navigator.of(context).pushNamed(Routers.home);
       
                    }),
              )
            ]),
    ),
    );
  }
}
