// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text.dart';

class Lists extends StatelessWidget {
   int count;
   double heigh;
  List<String> itemList;
  Lists(this.count, this.heigh, this.itemList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigh,
      child: ListView.builder(
        itemBuilder: ((context, index) => Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.sports_soccer_rounded),
                    Texts(text:  itemList[index],color:  Colors.black)
                  ]),
            )),
        itemCount: count,
      ),
    );
  }
}
