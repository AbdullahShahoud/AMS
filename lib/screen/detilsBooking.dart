// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data.dart';
import '../helper/Routing/rout.dart';
import '../helper/style/text_style.dart';
import '../widget/button.dart';
import '../widget/list2.dart';
import '../widget/pay.dart';
import '../widget/playerGround.dart';
import '../widget/text.dart';
import '../widget/text_feild.dart';

class DetailsBooking extends StatefulWidget {
  const DetailsBooking({super.key});

  @override
  State<DetailsBooking> createState() => _DetailsBookingState();
}
var controllerTeam;
class _DetailsBookingState extends State<DetailsBooking> {
  @override
  void initState() {
    // TODO: implement initState
    controllerTeam=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        height: 160.h,
        child: ListView.builder(
          itemBuilder: ((context, index) => PlayerGround(
                  image:playground[index].image,
                  context: context,
                  star: playground[index].start,
                  playground: playground[index].name,
                  loction: playground[index].location,
                  size: playground[index].size,
                   price:  playground[index].price

                  )),
          itemCount: 1,
        ),
      ),
      buttonHome(text: 'اختيار فزيق',function: (){
          Navigator.of(context).pushNamed(Routers.selectPerson);

      }),      
      Text("يتم تثبيت الحجز مباشرة بعد موافقة الفريق الاخر",style: TextStyles.media,),
       TextFrom(hint: 'ادخل موقع معروف',ico:Icons.add_location_alt_outlined,
                  keyboardType: TextInputType.text,controller:controllerTeam,
                  color: Theme.of(context).primaryColor , context: context ),
      buttonHome(text: 'فتح الخريطة',function: (){}),      
      Text('الموقع أعلاه هو مكان الانطلاق للملعب',style: TextStyles.media),
       buttonHome(text: 'الدفع',function:  () {
                     showModalBottomSheet(
            context: context, builder: (context) => Pay());
                  }),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Card(
          color: Theme.of(context).disabledColor,
          elevation: 0.7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column( 
            children: [
              List2(text: ['الحجز','الطلبات','اخرى',],
              icon: [Icons.sports_soccer_rounded,Icons.food_bank_rounded,Icons.add],
              ),
             
              Container(
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical:10.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))
                ),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.attach_money_outlined,color:  Colors.white,size: 25,),
                      Texts(text: 'الاجمالي',color:  Colors.white)
                    ]),
                 ),
            ],
          ),
        ),
      ),
       buttonHome(text: 'الحجز',function:  () {
                    Navigator.of(context).pushNamed(Routers.finishBooking);
      })
    ]));
  }
}
