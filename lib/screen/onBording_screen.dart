
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/widget/onBording_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helper/Routing/rout.dart';
import '../helper/style/text_style.dart';
import '../widget/button.dart';
bool islast=false;
PageController controller=PageController(initialPage: 0);
class OnBoriding extends StatefulWidget {
  @override
  State<OnBoriding> createState() => _OnBoridingState();
}

class _OnBoridingState extends State<OnBoriding> {


  @override
  Widget build(BuildContext context) {
    List<Widget>onBordingScreen=[
  OnBordingItem(text: 'تطبيق إلكتروني يسهل ويؤتمت عمل المنشآت الرياضية يستهدف الربط بين مختلف فئات ممارسي رياضة كرة القدم والملاعب المأجورة ضمن محافظة حمص',
  image: 'images/photo-1579952363873-27f3bade9f55.jpeg',
    ),
  OnBordingItem(text: ' يعرض التطبيق الملاعب الموجودة في حمص إضافة الى كل التفاصيل الخاص بها كما انه يوفر البحث وفق عدة عوامل',
  image: 'images/photo-1552318965-6e6be7484ada.jpeg',
     ),
  OnBordingItem(text: ' يسمح بأمكانية إنشاء فريق خاص بك والتواصل بين الفرق الاخرى للانضمام للمسابقات كما يقدم إمكانية طلب مأكولات ومشروبات ',
  image: 'images/photo-1579952363873-27f3bade9f55.jpeg',
  ),
];
    return Scaffold(
      body: SafeArea(child:
      Stack(
        children:[
          PageView.builder(
            controller: controller,
            itemBuilder: (BuildContext context, int index) =>
            onBordingScreen[index],
            itemCount:onBordingScreen.length ,
            onPageChanged: (index){
              if(index==onBordingScreen.length-1){
                 setState(() {
                   islast=true;
                 });
              }else{
                 setState(() {
                   islast=false;
                 });
              }
            },
            ),
          Positioned(
            top: 20.h,
             right: 15.w,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white
              ),
            onPressed: (){
                  Navigator.of(context ).pushNamed('login');
            },
            child: Text('skip',
            style: TextStyles.media.copyWith(
              color: Theme.of(context).primaryColor
            ),
            ))
            ),
        Positioned(
          bottom:30.h,
          left: 20.w,
          right: 20.w,
          child: buttonHome(text: 'التالي',
          paddingH: 100.w,
          function: ()async{
              if(islast){
          SharedPreferences shared=await SharedPreferences.getInstance();
          shared.setBool('onBording',true);
               Navigator.of(context).pushNamed(Routers.welcome);
              }else{
               setState(() {
           controller.nextPage(
            duration: Duration(microseconds: 500),
             curve: Curves.linear);
                 });
              }
             } ),
        ),
                  
        ]
      )
       )
    );
  }
}
