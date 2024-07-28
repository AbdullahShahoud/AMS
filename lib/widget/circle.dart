// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
   String image;
   double raduis;
  Circle({ 
   required this.raduis,
   required this.image,
});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage:  AssetImage('images/64c8c314df2f0.png'),
      backgroundColor: Color.fromARGB(255, 202, 200, 200),
      radius: raduis,
    );
  }
}
