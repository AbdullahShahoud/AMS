import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buttonHome({
    Color color= const  Color.fromRGBO(19, 151, 19, 0.835),
    double paddingV=20,
    double paddingH= 150,
    required String text,
    required VoidCallback function,
}) => ElevatedButton(
      onPressed: function,
      child: Text(text,
      style:TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,
        color:Colors.white)
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: paddingV.h, horizontal: paddingH.w),
        elevation: 0.7,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
        color:Colors.white),
        side:
            BorderSide(color: Colors.white, width: 2, style: BorderStyle.solid),
      ),
    );
 