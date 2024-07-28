
// ignore_for_file: must_be_immutable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playggound1/bloc/cubit/playGround.dart';
import 'package:playggound1/bloc/cubit/playGround_state.dart';
import 'package:playggound1/screen/onBording_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/Routing/app_router.dart';
import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() async{
  //  await EasyLocalization.ensureInitialized();
  SharedPreferences shared=await SharedPreferences.getInstance();
  bool? onBording= shared.getBool('onBording');
  if(onBording ==null){
  shared.setBool('onBording',false);
  onBording= shared.getBool('onBording');
  }
  runApp( MyApp(onBording: onBording!,) );
}
class MyApp extends StatelessWidget {
  bool onBording;
   MyApp({super.key,
   required this.onBording, 
   });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>PlayGroundCubit(),
      child: BlocConsumer<PlayGroundCubit,PlayGroundState>(
        listener: (context, state) {
        },
        builder: (context, state) => 
         ScreenUtilInit(
          minTextAdapt: true,
          designSize: Size(415, 915),
           child: MaterialApp(
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      // supportedLocales: [
      //   Locale('ar', 'AE'),
      // ],
//   54B435   125C13   158467  
//AFC8AD    Color.fromARGB(181, 224, 246, 226)
          theme: ThemeData(
          primaryColor: Color(0xff54B435),
          disabledColor: Color.fromARGB(181, 224, 246, 226),
          bottomAppBarColor: Color.fromRGBO(73, 255, 0, 40),
          cardColor: Colors.black12,
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xD3139713),
              )),
            debugShowCheckedModeBanner: false,
            title: 'Ams Goal',
            home:onBording?HomeScreen():OnBoriding(),
            onGenerateRoute:AppRouter.generateRoute ,
            
                   ),
         ), 
      ),
    );
  }
}
