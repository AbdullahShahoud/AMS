import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/circle.dart';
import '../widget/text.dart';
import 'package:flutter/material.dart';
import '../widget/material.dart';
import '../widget/widget_border.dart';

class PersonDitals extends StatelessWidget {
  PersonDitals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('person'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Circle(raduis: 100,image: '',),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Texts(text:'اسم اللاعب',color: Colors.black),
              ),
              WidgetBorder(widget:Icon(Icons.group_add)),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Matrials(text:20,label: 'العمر'),
                    Matrials(text:10, label:'الاصدقاء'),
                    Matrials(text:5,label: 'الحجوزات'),
                    Matrials(text:1,label: 'الفرق'),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
            ]),
      ),
    );
  }
}
