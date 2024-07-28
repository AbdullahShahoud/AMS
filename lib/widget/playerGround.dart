// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/helper/Routing/rout.dart';

import '../helper/style/text_style.dart';

Widget PlayerGround({
 required String image,
 required BuildContext context,
 required List<bool> star,
 required String playground,
 required String size,
 required String loction,
 required int price,



})=>
InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Routers.detiles);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          height: 150.h,
          child: Card(
            color: Theme.of(context).disabledColor,
             child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    height: 160.h,
                    width: 150.w,
                    fit: BoxFit.cover,
                    image: AssetImage(image)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      playground,
                      style: TextStyles.media.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(loction),
                    Row(
                      children: [
                         Icon(
                              Icons.star,
                              color:  star[0] 
                                  ? Colors.amber
                                  : Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color:  star[1] 
                                  ? Colors.amber
                                  : Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color:  star[2]
                                  ? Colors.amber
                                  : Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color:  star[3]
                                  ? Colors.amber
                                  : Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color:  star[4] 
                                  ? Colors.amber
                                  : Colors.black,
                            ),
                        SizedBox( width: 15.w,),
                       Text('${price}'), 
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  