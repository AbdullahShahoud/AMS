import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data.dart';
import '../helper/Routing/rout.dart';
import '../helper/style/text_style.dart';
import '../model/data.dart';
import 'package:flutter/material.dart';
import '../widget/button.dart';
import '../widget/list_servies.dart';
import '../widget/scroll.dart';
import '../widget/text.dart';
import '../widget/widget_border.dart';

class Detiles extends StatelessWidget {
  const Detiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('اسم الملعب',
                  style: TextStyles.big),
                  ItemScroll(image: image,context: context),
                ListTile(
                  title: Texts(text: 'اسم الملعب',color:  Colors.black),
                  subtitle: Text(
                    'موقع الملعب',
                    style: TextStyles.small,
                  ),
                  trailing: WidgetBorder(widget: Text(
                    '2 KM',
                    style: TextStyle(color:  Theme.of(context).primaryColor),
                  )),
                ),
                Texts(text: 'سعر',color:  Theme.of(context).primaryColor),
                SizedBox(
                  height: 150.h,
                  child: Text('Map',textAlign: TextAlign.center,),
                ),
                Text(
                  'الخدمات',
                  textAlign: TextAlign.right,
                  style: TextStyles.big
                ),
                ListServies(ss:servies), 
                SizedBox( 
                  height: 20, 
                ),
            buttonHome(text: 'حجز',function: (){
              Navigator.of(context).pushNamed(Routers.booking);
            }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
