import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/Routing/rout.dart';
import '../widget/button.dart';
import '../widget/logo.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/sven-kucinic-Z0KjmjxUsKs-unsplash.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent.withOpacity(0.0),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Logo(),
                  Column(children: [
        buttonHome(text: 'تسجيل دخول ',function: (){
                  Navigator.of(context).pushNamed(Routers.login);
        },color: Colors.transparent),
                    SizedBox( 
                      height: 20.h,
                    ),
        buttonHome(text: ' إنشاء حساب',function: (){
                  Navigator.of(context).pushNamed(Routers.singin);
        },color: Colors.transparent),

                  ])
                ]),
          )),
    );
  }
}
