// ignore_for_file: must_be_immutable

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class BackGroundImage extends StatefulWidget {
  Widget screen;
   BackGroundImage({super.key,
   required this.screen
   });

  @override
  State<BackGroundImage> createState() => _BackGroundImageState();
}
  late Timer timer;
  var currentNumber = Random().nextInt(10) + 1;

class _BackGroundImageState extends State<BackGroundImage> {
  @override
  void initState() {
    timer = Timer.periodic( Duration(seconds: 4), (timer)
    {
      setState(() {
        currentNumber = Random().nextInt(10) + 1;
      });
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [ Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/image$currentNumber.jpg'),
              fit: BoxFit.cover,
            ),
            ),
      ),
      widget.screen
   ] );
  }
}

