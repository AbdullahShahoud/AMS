// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Texts extends StatelessWidget {
   String text;
   Color color;
  Texts({required this.text,required this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style: TextStyle(
        fontSize: 25,
        color: color,
      ),
    );
  }
}
