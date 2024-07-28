// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../bloc/cubit/playGround.dart';
import '../data.dart';
import '../widget/request_all.dart';
import '../widget/search.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('طلبات'),
          actions: [
            Text('${PlayGroundCubit.get(context).add}'),
      // PlayGroundCubit.get(context).add > 0? IconButton(onPressed: (){
      //         setState(() {
      //           PlayGroundCubit.get(context).add=0;
      //         });
      //       }, icon: Icon(Icons.cancel),
      //             ):Center(),
            IconButton(onPressed: (){
             showSearch( context:context,delegate: SearchFood(requist: food,history: ['شاورما ','مناقيش ','بطاطا ']));
            }, icon: Icon(Icons.search_rounded),
                  iconSize: 30,
                  color: Colors.black,
                  ),
          ],
          bottom: TabBar(tabs: [
            Tab(text: 'الكل'),
            Tab(text: 'مشروبات'),
            Tab(text: 'وجبات'),
          ]),
        ),
        body: TabBarView(children: [
          All(),
          All(),
          All(),
        ]),
      ),
    );
  }
}
