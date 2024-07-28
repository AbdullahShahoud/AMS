import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../data.dart';
import '../helper/Routing/rout.dart';
import '../widget/button.dart';
import '../widget/personIteam.dart';
class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 350.h,
              child: ListView.builder(
                itemBuilder: ((context, index) =>
                    PersonIteam(icon:Icons.group_off_outlined,title: person[index].name, subtitle: person[index].degre)),
                itemCount: 4,
              ), 
            ),
            SizedBox(
              height: 40,
            ),
          buttonHome(text: 'الخروج من الفريق',function: (){},color:Colors.red,paddingH: 130.w),
          buttonHome(text: ' عرض الفرق ',function: (){
          Navigator.of(context).pushNamed(Routers.teams);

          },color:Theme.of(context).primaryColor,paddingH: 130.w),
      
          ],
        );
  }
}