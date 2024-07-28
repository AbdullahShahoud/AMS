import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data.dart';
import '../helper/Routing/rout.dart';
import '../helper/style/text_style.dart';

class CompetitionNew extends StatelessWidget {
  const CompetitionNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ListView.builder(
        itemCount: competition.length,
        itemBuilder:(context, index) => 
        InkWell(
      onTap: () {
        // Navigator.of(context).pushNamed(Routers.detils_competition);
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
                    image: AssetImage(competition[index].image)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      competition[index].name,
                      style: TextStyles.media.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(competition[index].age),
                    Row(
                      children: [
                       Text('${competition[index].price}'),                          
                        SizedBox( width: 15.w,),
                       Text(competition[index].location), 
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    )
  ),
    );
  }
}