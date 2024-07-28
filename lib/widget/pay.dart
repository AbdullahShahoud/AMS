
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/widget/button.dart';
import 'package:playggound1/widget/text.dart';
import 'package:playggound1/widget/text_feild.dart';

import '../helper/style/text_style.dart';

class Pay extends StatefulWidget {

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  late String image;

  late bool check = false;

  late bool check2 = false;
  var controllerPhone;
  var controllerPas;
 @override
  void initState() {
    // TODO: implement initState
    controllerPas=TextEditingController();
    controllerPhone=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 400.h,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Checkbox(
                  activeColor: Theme.of(context).primaryColor,
                    value: check,
                    onChanged: (val) {
                      setState(() {
                        check = val!;
                      });
                    }),
              ),
              Texts( text: 'الدفع عن طريق هاتفك',color:  Colors.black),
            ],
          ),
          TextFrom(hint: 'رقم الهاتف',ico:  Icons.phone_android_rounded,
                  keyboardType: TextInputType.number,controller:controllerPhone ,
                  color: Theme.of(context).primaryColor, context: context ),
                  TextFrom(hint: 'كلمة المرور',ico:Icons.password,
                  keyboardType: TextInputType.number,controller:controllerPas ,
                  color: Theme.of(context).primaryColor, context: context
                   ),
          Row(
            children: [
              Checkbox(
                  activeColor: Theme.of(context).primaryColor,
                  value: check2,
                  onChanged: (val) {
                    setState(() {
                      check2 = val!;
                    });
                  }),
              Text('أوافق على سحب مبلغ .... من حسابي',
                  style: TextStyles.media),
            ],
          ),
          SizedBox(
            height: 30,
          ),
            buttonHome(text: 'دفع',function: (){
                    Navigator.of(context).pop();
            })
        ],
      ),
    );
    
  }
}
