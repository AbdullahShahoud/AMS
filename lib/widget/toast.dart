// ignore_for_file: non_constant_identifier_names

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
enum toastState{
  SUCCESS,ERORR,WARNIGE
}
Color chosetoastColor(toastState state ){
  Color? color;
  switch (state) {
    case toastState.SUCCESS:
      color=Color(0xff54B435);
      break;
      case toastState.ERORR:
      color=Colors.red;
      break;
      case toastState.WARNIGE:
      color=Colors.amber;
      break;
  }
    return color;

}
void showToast(String msg,toastState state){
  Fluttertoast.showToast(
  msg: msg,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
  backgroundColor:  chosetoastColor(state),
  textColor: Colors.white,
  fontSize: 16
);
}
