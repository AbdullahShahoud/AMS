// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data.dart';
import 'text.dart';

class ListServies extends StatelessWidget {
  List<Servies> ss;
  ListServies( {required this.ss});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      margin:  const EdgeInsets.symmetric(horizontal: 10.0),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(181, 224, 246, 226)
      ),
      height: 220.h,
      width: double.infinity, 
      child: ListView.separated(
        itemBuilder: ((context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Icon(ss[index].icon),
              Texts(text:ss[index].name,color:  Colors.black)
            ])),
        itemCount: ss.length,
        separatorBuilder:(context, index) =>SizedBox(height: 10.h,) ,
      ),
    );
  }
}
