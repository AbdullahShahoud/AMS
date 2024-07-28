import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playggound1/bloc/cubit/playGround.dart';
import 'package:playggound1/bloc/cubit/playGround_state.dart';
import '../helper/Routing/rout.dart';
import '../screen/myGames.dart';
import '../screen/person.dart'; 
import 'package:flutter/material.dart';
import '../widget/body_home.dart';
import 'competition.dart';
import 'ourteam.dart';
import 'profile.dart'; 

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screen = [BodyHome(), OurTeam(), Person(), MyGames(), Profile(),Competition()];
  @override
  Widget build(BuildContext context) { 
    return BlocConsumer<PlayGroundCubit,PlayGroundState>(
      listener: (context, state) {},
      builder: (context, state) => 
      Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.of(context).pushNamed(Routers.notice);
        },
        child: const Icon(Icons.notifications_none,color:Colors.white,),
      ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.green),
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: index,
          elevation: 0.4,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئسية'),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_score), label: 'فريقنا'),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'أشخاص'),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer_outlined), label: 'حجوزاتي'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'الملف الشخصي'),
                 BottomNavigationBarItem(
                icon: Icon(Icons.person), label: ' مسابقات'),
          ],
          onTap: (value) {
       setState(() {
         index=value;
       });
          },
        ),
        body: screen[index],
      ),
    );
  }
}
