// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/style/text_style.dart';
import '../widget/logo.dart';
Widget OnBordingItem ( {
  required String text,
  required String image,
    })=>
 Stack(
        children: [
          Image( 
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage(image),
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 40.h, 
            left: 0,
            right: 0,
            child:
              Container(
                alignment: Alignment.bottomCenter,
                height: 360.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                  Logo(),
                  Padding(
                    padding:  EdgeInsets.only(bottom:25.h,
                        right: 15.0.w, left: 15.0.w),
                    child: Text(
                         text,
                        textAlign: TextAlign.center,
                        style: TextStyles.media,
                                    )                  ),
                ]), 
              ),),
            ],
      );
 