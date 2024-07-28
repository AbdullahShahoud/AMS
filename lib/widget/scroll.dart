

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ItemScroll({
 required List<String> image,
 required BuildContext context
})=>
Container(
     height: 200.h,
      child: ListView.builder(
     itemBuilder: (context, index) => ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Image.asset(
        image[index],
        height: double.infinity,
        width: MediaQuery.of(context).size.width-25,
        fit: BoxFit.cover,
      ),
),
   itemCount: image.length,
   scrollDirection: Axis.horizontal,
         ),
   );