// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'text.dart';

class Matrials extends StatelessWidget {
   dynamic text;
   String label;
  Matrials({required this.text,required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Texts(text:'$text', color:Theme.of(context).primaryColor),
            ),
            borderRadius: BorderRadius.circular(7),
            color: Color.fromARGB(255, 247, 243, 243),
          ),
        ),
        Texts(text:label, color:Colors.black)
      ],
    );
  }
}
