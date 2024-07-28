// import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:playggound1/screen/add_team.dart';
import 'package:playggound1/screen/join_team.dart';
import 'package:playggound1/screen/team.dart';
import '../helper/style/text_style.dart';
import 'package:flutter/material.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar( 
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Theme.of(context).primaryColor,
            labelStyle: TextStyles.media,
          tabs: [
            Text('فريقي'), 
            Text('إنشاء فريق'),
            Text('الانضمام لفريق'),
          ]
          ,),
          title: Text('فريقنا'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body:TabBarView(
          children: [
            Team(),
            AddTeam(),
            JoinTeam(),
          ],
        )
      ),
    );
  }
}
