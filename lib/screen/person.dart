// ignore_for_file: prefer_const_constructors

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data.dart';
import 'package:flutter/material.dart';
import '../helper/Routing/rout.dart';
import '../widget/personIteam.dart';
import '../widget/search.dart';
import '../widget/text.dart';

class Person extends StatefulWidget {
  Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}
var controllerSearch;
class _PersonState extends State<Person> {
  
  @override
  void initState() {
    // TODO: implement initState
    controllerSearch=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              leading: 
              IconButton(icon:
              Icon(
                Icons.group_outlined,
                size: 35,
              ),onPressed: (){
                Navigator.of(context).pushNamed(Routers.frinds);
              },),
              title: Texts(
               text:  'أصدقائي',
               color: Colors.black,
              ),
              trailing:  Padding(
            padding: const EdgeInsets.all(15.0),
            child:IconButton(icon: Icon(Icons.person_search_rounded), onPressed: () { 
             showSearch( context:context,delegate: SearchPersoin(persoin: persons,history: ['عبدالرحمن','أحمد','محمد']));
             },)
                        ),
            ),       
            Container(
                height: 600.h,
                child: ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                    child: PersonIteam( icon:Icons.group_add,
        title: person[index].name,subtitle: person[index].degre),
                 onTap: (){
          Navigator.of(context).pushNamed(Routers.personDetiler);

                 },
                  ),
                  itemCount: person.length,
                ))
          ]),
        ),
      ),
    );
  }
}
