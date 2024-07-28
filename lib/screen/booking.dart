// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:playggound1/helper/Routing/rout.dart';

import '../helper/style/text_style.dart';
import '../widget/button.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
   DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
             Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                    ),
            DatePicker(
              DateTime.now(),
              height: 100.h,
              width: 80.w, 
              daysCount: 35,
              initialSelectedDate: DateTime.now(),
              selectionColor: Theme.of(context).primaryColor,
              selectedTextColor: Colors.white,
              dateTextStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              dayTextStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              monthTextStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              onDateChange: (date) {
                setState(() {
                  selectedDate = date;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50,top: 15),
              child: Text(
                'تم الحجز في الساعة ${selectedDate??DateTime.now()} من يوم الاحد',
                style: TextStyles.media,
              ),
            ),
            buttonHome(text: 'إضافة طلبات',function: (){
                    Navigator.of(context).pushNamed(Routers.reguest);
            }),
            SizedBox(
              height: 30,
            ),
            buttonHome(text: 'التالي',function: (){
                    Navigator.of(context).pushNamed(Routers.detilesbooking);
            }),
          ],
        ),
      ),
    );
  }
}
