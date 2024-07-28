
import 'package:flutter/material.dart';
import 'package:playggound1/widget/button.dart';
import 'package:playggound1/widget/material.dart';
import 'package:toggle_list/toggle_list.dart';
import '../data.dart';
import '../helper/Routing/rout.dart';
import 'circle.dart';
import 'date.dart';
import 'list.dart';
// ignore_for_file: public_member_api_docs
 const Color appColor = Color(0xff54B435);

class NewBooking extends StatefulWidget {

  @override
  State<NewBooking> createState() => _NewBookingState();
  
}


class _NewBookingState extends State<NewBooking> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ToggleList(
          divider: const SizedBox(height: 10),
          toggleAnimationDuration: const Duration(milliseconds: 400),
          scrollPosition: AutoScrollPosition.begin,
          trailing: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.expand_more),
          ), 
          children: List.generate(
            playground.length,
            (index) => ToggleListItem(
              leading:  Padding(
                padding: EdgeInsets.all(10),
                child: Circle(raduis: 30,image: playground[index].image,),
              ),
              title: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     playground[index].name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 17),
                    ),
                    Text(
                      '${Date.new()}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              divider: const Divider(
                color: Colors.white,
                height: 2,
                thickness: 2,
              ),
              content: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  // color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            //  ItemScroll(context: context, image: image),
              Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              children: [
                Lists(5, 200, listIformation),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'يمنع إلغاء الحجز قبل ساعتين من البدء',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buttonHome(text: 'تعديل',function: (){
                  Navigator.of(context).pushNamed(Routers.detilesbooking);
          },paddingH: 60),
          buttonHome(text: 'إلغاء',function: (){
            // setState(() {
              // visiblity=false;
            // });
          },paddingH: 60,color:Colors.red),
          ],
        ),      
                     Divider(
                      color: Colors.white,
                      height: 2,
                      thickness: 2,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceAround,
                      buttonHeight: 32.0,
                      buttonMinWidth: 90.0,
                      children: [
            Matrials(text: 3,label:  "الساعة"),
             Matrials(text: 10,label:  'اليوم'),
            Matrials(text:  10,label:  'الشهر'),                   
                      ],
                    )
                  ],
                ),
              ),
              headerDecoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              expandedHeaderDecoration: const BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}