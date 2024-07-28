import 'package:flutter/material.dart';

import '../data.dart';
import '../helper/style/text_style.dart';
import '../widget/circle.dart';
import '../widget/text.dart';

class SelectPersoin extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SelectPersoinState(); 
  }
}

class Persoins {
  Persoins({required this.name,required this.degre,required this.checked} );

   String name;
   String degre;
  bool checked;
}

class _SelectPersoinState extends State<SelectPersoin> {

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: SafeArea(
        child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
               child: ListTile(
        shape: Border.fromBorderSide(
            BorderSide(color: Color.fromARGB(255, 209, 206, 206), width: 1)),
        leading: Circle(raduis: 35,image:'images/photo_2_2023-10-21_22-44-53.jpg'),
        title: Texts(text:person[index].name, color:Colors.black),
        subtitle: Text(person[index].degre,
        style:  TextStyles.small.copyWith(color: Theme.of(context).primaryColor),),
        trailing: 
        CheckboxListTile(
          value: false ,
          onChanged: ( newValue) {
          },
        )
         ),
                ),
                itemCount: person.length, 
              ),
      ),
    );
  }}