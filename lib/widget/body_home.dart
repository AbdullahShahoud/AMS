import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data.dart';
import '../helper/Routing/rout.dart';
import '../widget/circle.dart';
import '../widget/playerGround.dart';
import 'package:flutter/material.dart';
import '../helper/style/text_style.dart';

class BodyHome extends StatefulWidget {
  @override
  State<BodyHome> createState() => _BodyHomeState();
}
var controllerSearch;

class _BodyHomeState extends State<BodyHome> {
  @override
  void initState() {
 controllerSearch=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('data',
              style: TextStyles.media,),
            ),
        actions: [
          Row(
          children: [
              ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: IconButton(onPressed: (){
                      Navigator.of(context).pushNamed(Routers.search);

              }, icon: Icon(Icons.search_rounded),
              iconSize: 25,
              color: Colors.black,
              ),
              ),
             InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routers.profile);
                    },
                    child: Circle(raduis: 30,image:'',),
                  ),
                 
          ],
        ),  ],        
     backgroundColor:Color.fromARGB(181, 224, 246, 226) ,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder( 
              itemCount: cros.length,
              itemBuilder: (context, index, id) =>
                  InkWell(
                    onTap: () {
                    Navigator.of(context).pushNamed(cros[index].rout);
                  },
                    child: Container(
                       width:MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(cros[index].image,
                                  ),
                                ))),
                  ),
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                aspectRatio: 20 /11,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                initialPage: 0,
                reverse: true
              ),
            ),
            Container(
              height: 550.h,
              child: ListView.builder(
                itemBuilder: ((context, index) => PlayerGround(
                  image:playground[index].image,
                  context: context,
                  star: playground[index].start,
                  playground: playground[index].name,
                  loction: playground[index].location,
                  size: playground[index].size,
                   price:  playground[index].price,

                  )),
                itemCount: playground.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
