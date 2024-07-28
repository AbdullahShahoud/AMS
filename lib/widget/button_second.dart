// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

Widget ButtonSecond({
  required  String text,
 required VoidCallback function,
  Color color=Colors.transparent,
})=>
ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 20),
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: color, elevation: 0.0),
    );