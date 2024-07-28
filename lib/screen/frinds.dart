import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data.dart';
import '../widget/personIteam.dart';

class Frindes extends StatelessWidget {
  const Frindes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('الاصدقاء'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
                  itemBuilder: (context, index) =>
          PersonIteam( icon:Icons.group_off,title: person[index].name,subtitle:  person[index].degre),
                  itemCount: person.length,
                ));
  }
}
