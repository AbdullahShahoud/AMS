import 'package:flutter/material.dart';
import '../helper/Routing/rout.dart';
import '../widget/button.dart';
import '../widget/pay.dart';

class DetilsCompetition extends StatelessWidget {
  const DetilsCompetition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
      textAlign:TextAlign.center,
    ''' سيتم إرسال إشعارات الى كل أعضاء الفريق يتم تثبيت الانضمام بعد موافقة كامل لأعضاء الفريق''',
      style: TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
    ),
           buttonHome(text: 'الدفع',function:  () {
                     showModalBottomSheet(
            context: context, builder: (context) => Pay());
                  }),
                  buttonHome(text: 'الحجز',function:  () {
                    Navigator.of(context).pushNamed(Routers.home);
      })
        ],
      ),
    );
  }
}