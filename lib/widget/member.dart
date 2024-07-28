// ignore_for_file: must_be_immutable

import '../helper/style/text_style.dart';
import '../widget/circle.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
   String text1;
   String text2;
  Member({required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).disabledColor,
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
      ),
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(children: [Circle(raduis:  40,image: '',), 
      Text(text1,style: TextStyles.media.copyWith(fontWeight: FontWeight.w100),),
       Text(text2,style: TextStyles.small)]),
    );
  }
}
