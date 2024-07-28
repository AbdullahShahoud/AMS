import 'package:flutter/material.dart';
import '../widget/personIteam.dart';
List name=['النصر','الكرامة','الوثبة','الجيش'];
class Teames extends StatelessWidget {
   Teames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('الفرق'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
                  itemBuilder: (context, index) =>
          PersonIteam( icon: Icons.chat,
        title: name[index],subtitle: '10'),
                  itemCount: 4,
                ),
    );
  }
}