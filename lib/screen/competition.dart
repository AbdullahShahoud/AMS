import 'package:flutter/material.dart';
import 'package:playggound1/screen/hhh.dart';
import '../helper/style/text_style.dart';
import 'competition_new.dart';

class Competition extends StatelessWidget {
  const Competition({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(
            labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorColor: Theme.of(context).primaryColor,
              labelStyle: TextStyles.media,
            tabs: [
               Text('مسابقات'), 
              Text('الاشتراكات '),
            ]),
        ),
        body: TabBarView(children: [
          CompetitionNew(),
          MyWidget()
        ],),
      ),
    );
  }
}