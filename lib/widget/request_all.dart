import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/cubit/playGround.dart';
import '../data.dart';
import '../helper/style/text_style.dart';

class All extends StatefulWidget {
  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {

  @override
  Widget build(BuildContext context) {
    return
    ListView.builder(
      
      itemCount: food.length,
      itemBuilder: (context, index) =>
      Padding(
        padding:  EdgeInsets.only(bottom:4.0),
        child: InkWell(
        onTap: () {
          setState(() {
      PlayGroundCubit.get(context).Change;
          });
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          color:Color.fromARGB(181, 224, 246, 226)),
          height: 150.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                      ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
              height: 160.h,
              width: 150.w,
              fit: BoxFit.cover,
              image: AssetImage(food[index].image)),
                      ),
                      Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                food[index].name,
                style: TextStyles.media.copyWith(fontWeight: FontWeight.bold,
              )),
              Text( food[index].restornt,style: TextStyles.small),
              Text( food[index].price.toString(),style: TextStyles.small.copyWith(color: Theme.of(context).primaryColor)),
            ]
          ),
                      ),
                    ]),
        ),
            ),
      ),
    );
  }
}
