import 'package:flutter/material.dart';

import '../data.dart';
import '../widget/material.dart';
import '../widget/search.dart';

class SearchPlayground extends StatelessWidget {
  const SearchPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          InkWell(
            child: Matrials(text:'الوقت',label: '',),
            onTap:(){
               showSearch( context:context,delegate:SearchPlayGroundName(words: playground,history: ['فراس','العاصي']));
            }
          ),
        InkWell(
            child: Matrials(text:'الموقع',label: '',),
            onTap:(){
               showSearch( context:context,delegate:SearchPlayGroundLocation(words: playground,history: ['فراس','العاصي']));
            }
          ),
           InkWell(
            child: Matrials(text:'السعر',label: '',),
            onTap:(){
               showSearch( context:context,delegate:SearchPlayGroundPrice(words: playground,history: ['فراس','العاصي']));
            }
          ),
           InkWell(
            child: Matrials(text:'الاسم',label: '',),
            onTap:(){
               showSearch( context:context,delegate:SearchPlayGroundName(words: playground,history: ['فراس','العاصي']));
            }
          ),
        ],),
    );
  }
}