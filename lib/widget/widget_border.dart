// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetBorder extends StatelessWidget {
   Widget widget;
  WidgetBorder({required this.widget,super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(6)),
      // color: Theme.of(context).primaryColor,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
          child: widget),
    );
  }
}
