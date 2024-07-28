// ignore_for_file: must_be_immutable, unnecessary_null_comparison

import '../helper/style/text_style.dart';
import '../widget/text.dart';
import 'package:flutter/material.dart';

import 'circle.dart';

class PersonIteam extends StatefulWidget {
   String title;
   String subtitle;
   IconData icon;
  PersonIteam({required this.icon,required this.title,required this.subtitle});

  @override
  State<PersonIteam> createState() => _PersonIteamState();
}

class _PersonIteamState extends State<PersonIteam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        shape: Border.fromBorderSide(
            BorderSide(color: Color.fromARGB(255, 209, 206, 206), width: 1)),
        leading: Circle(raduis: 35,image:'images/photo_2_2023-10-21_22-44-53.jpg'),
        title: Texts(text:widget.title, color:Colors.black),
        subtitle: Text(widget.subtitle,
        style:  TextStyles.small.copyWith(color: Theme.of(context).primaryColor),),
        trailing: IconButton(onPressed: (){}, icon:Icon(widget.icon,
                              size: 25,
                              color:Colors.red
                              )),
         ),
    );
  }
}
