// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../helper/style/text_style.dart';
import '../widget/new_booking.dart';
import '../widget/oldbooking.dart';

class MyGames extends StatelessWidget {
  const MyGames({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Theme.of(context).primaryColor,
            labelStyle: TextStyles.media,
            tabs: [
              Tab(
                child: Text(' الحالية'),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('السابقة'),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NewBooking(),
            OldBooking(),
          ],
        ),
      ),
    );
  }
}
