
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/cubit/playGround.dart';
import '../helper/style/text_style.dart';

Widget TextFrom({
  required String hint,
  required IconData ico,
  required TextInputType keyboardType,
  required TextEditingController controller,
   Color color=  const Color.fromRGBO(255, 255, 255, 1),
  required BuildContext context,
  double paddingContentV=20,
  double paddingContentH=50,
  Widget? password,
})=>
Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
  child: TextFormField(
    controller: controller,
    cursorColor: 
    Theme.of(context).primaryColor,
    textAlign: TextAlign.center,
    obscureText: PlayGroundCubit.get(context).obscure,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: paddingContentV.w,horizontal: paddingContentH.h),
        prefixIcon: Icon(
          ico,
          size: 30,
          color: color,
        ),
        icon:password != null?
        IconButton(onPressed: (){
          PlayGroundCubit.get(context).ChangeView(PlayGroundCubit.get(context).obscure);
        }, icon: 
         Icon(
        PlayGroundCubit.get(context).obscure? Icons.visibility:Icons.visibility_off,
          size: 30,
          color: color,
        ),
        ): null ,
        hintText: hint,
        hintStyle: TextStyles.media.copyWith(color: color),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: color,width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: 
            Theme.of(context).primaryColor
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: Colors.red))),
    keyboardType: keyboardType,
    
  ),
);