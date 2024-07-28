// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'text.dart';

class List2 extends StatelessWidget {
 List< String> text;
  List<IconData> icon;
   List2({
   required this.icon,
   required this.text,
   });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Texts(text: text[index],color:  Colors.black),
            Icon(icon[index]),
          ],
        ),
        itemCount: 3,
      ),
    );
  }
}
