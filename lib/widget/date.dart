import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/helper/style/text_style.dart';
import 'package:playggound1/widget/material.dart';
import 'widget_border.dart';

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: ((context, index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Matrials( text: index, label: 'today[index]',),
                  )
                  )
                  ),
        ),
        Container(
            height: 230,
            child: GridView.count(
                crossAxisCount: 5,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: List.generate(
                    15,
                    (index) => WidgetBorder(
                       widget: Center(
                          child: Text(
                            '02:30 - 04:00',
                            textAlign: TextAlign.center,
                            style: TextStyles.small.copyWith(
                              color: Colors.black
                            ),
                          ),
                        ),
                        )))),
      ],
    );
  }
}
