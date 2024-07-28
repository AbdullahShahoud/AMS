import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/Routing/rout.dart';
import '../model/data.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاخبار'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.separated(
        itemBuilder:(context, index) =>
         Card(
          color:Theme.of(context).disabledColor,
           child: InkWell(
                 child: Row(
                             children: [
                               Container(
                                 width: 120.w,
                                 height: 120.h,
                                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image[index]),
                      fit: BoxFit.cover)),
                               ),
                               SizedBox(
                                 width: 20.w,
                               ),
                               Expanded(
                                 child: Container(
                                   height: 120.h,
                                   padding:EdgeInsets.only(bottom: 10,top:10,left: 10),
                                   child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'propertys behavior',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'The [overflow] propertys behavior shown with the given overflow option.',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                                   ),
                                 ),
                               ),
                             ],
                 ),
                 onTap: () {
                   Navigator.of(context).pushNamed(Routers.detilsNews);
                 },
               ),
         ),
      
         separatorBuilder: (context, index) =>SizedBox(height: 3,),
          itemCount: image.length),
    );
  }
}