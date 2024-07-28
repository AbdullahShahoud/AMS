import 'package:flutter/material.dart';
import 'package:playggound1/data.dart';

import '../helper/Routing/rout.dart';
import '../helper/style/text_style.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
      itemCount: competition.length,
      itemBuilder: (context, index) => InkWell(
        child: ListTile(
          onTap: (){
          Navigator.of(context).pushNamed(Routers.detils_competition);

          },
          style: ListTileStyle.list,
          title: Text(competition[index].name,style: TextStyles.big,),
          subtitle: Text(competition[index].date,style: TextStyles.media,),
          trailing: Text(competition[index].location,style: TextStyles.media,),
        ),
      ),
    )
    );
  }
}