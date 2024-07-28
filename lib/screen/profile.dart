import '../helper/Routing/rout.dart';
import '../widget/button.dart';
import '../widget/circle.dart';
import '../widget/text.dart';
import 'package:flutter/material.dart';
import '../widget/dropdown.dart';
import '../widget/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selected = 'مهاجم';
  List<String> cc = [
    'مهاجم',
    'دفاع',
    'حارس مرماة',
    'جناح أيمن',
    'جناح أيسر',
    'وسط',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Circle(raduis:  100,image: '',),
            Texts(text:  'اسم الاعب',color:  Colors.black),
            Texts(text:'مستوى الاعب',color:  Colors.black),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Matrials(text: 20,label:  'العمر'),
                  Matrials(text:10, label:'الاصدقاء'),
                  Matrials(text:5,label: 'الحجوزات'),
                  Matrials(text:5,label: 'الاهداف'),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              DroubDown(selected:  'مهاجم',content:  cc),
              Texts(text: 'مركزك في الفريق', color:Theme.of(context).primaryColor)
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              child:
        buttonHome(text: 'الانضمام لفريق',function: (){
          Navigator.of(context).pushNamed(Routers.Jointeam);
        }),
            ),
        buttonHome(text: 'تسجيل الخروج',function: (){},color: Colors.red),
          ],
        ),
      ),
    );
  }
}
