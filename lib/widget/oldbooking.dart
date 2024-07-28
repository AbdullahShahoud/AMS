import 'package:flutter/material.dart';
import '../data.dart';
import '../helper/style/text_style.dart';

class OldBooking extends StatelessWidget {
  const OldBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: playground.length,
      itemBuilder: (context, index) => ListTile(
        style: ListTileStyle.list,
        title: Text(playground[index].name,style: TextStyles.big,),
        subtitle: Text('date',style: TextStyles.media,),
        trailing: Text(playground[index].location,style: TextStyles.media,),
      ),
    );
  }
}
