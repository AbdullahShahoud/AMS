import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsNews extends StatelessWidget {
  const DetailsNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(child: Text('نوع الخبر'),alignment: Alignment.center,),
              Image(image: AssetImage('images/_20240502_002229.JPG'),
              width: MediaQuery.of(context).size.width,
              height: 300,
              ),
              Container(
          height: 500.h,
          padding:EdgeInsets.symmetric(horizontal: 10.0,vertical:20),
          width: MediaQuery.of(context).size.width-20,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(40),
              color: Theme.of(context).disabledColor
               ),
               child:Column(
                 children: [
                   Text(
           ''' The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)
               The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked)''',
                   softWrap: true,
                   maxLines: 10,
                   textAlign:TextAlign.center
                   ),
                 ],
               )
            
               )
            ],),
        ),
      ),
    );
  }
}