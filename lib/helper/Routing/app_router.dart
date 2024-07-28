
import 'package:flutter/material.dart';
import 'package:playggound1/helper/Routing/rout.dart';

import '../../screen/add_team.dart';
import '../../screen/booking.dart';
import '../../screen/cnangePassword.dart';
import '../../screen/code.dart';
import '../../screen/competition.dart';
import '../../screen/detilsBooking.dart';
import '../../screen/detils_competition.dart';
import '../../screen/detils_news.dart';
import '../../screen/finishbooking.dart';
import '../../screen/forgotPassword.dart';
import '../../screen/frinds.dart';
import '../../screen/home.dart';
import '../../screen/join_team.dart';
import '../../screen/login.dart';
import '../../screen/news.dart';
import '../../screen/person_detiles.dart';
import '../../screen/playGround_ditels.dart';
import '../../screen/profile.dart';
import '../../screen/request.dart';
import '../../screen/search_playground.dart';
import '../../screen/select_persoin.dart';
import '../../screen/singin.dart';
import '../../screen/teams.dart';
import '../../screen/welcome.dart';
import '../../widget/new_booking.dart';
class AppRouter {
  
static Route? generateRoute(RouteSettings settings){
 switch(settings.name){
case Routers.welcome:
return MaterialPageRoute(builder: (_)=>Welcome());
case Routers.login:
return MaterialPageRoute(builder: (_)=>Login());
case Routers.home:
return MaterialPageRoute(builder: (_)=>HomeScreen());
case Routers.singin:
return MaterialPageRoute(builder: (_)=>Singin());
case Routers.ChangePassword:
return MaterialPageRoute(builder: (_)=>ChangePassword());
case Routers.forgote:
return MaterialPageRoute(builder: (_)=>Forgot_password());
case Routers.info:
return MaterialPageRoute(builder: (_)=>Code());
case Routers.detiles:
return MaterialPageRoute(builder: (_)=>Detiles());
case Routers.Jointeam:
return MaterialPageRoute(builder: (_)=>JoinTeam());
case Routers.addteam:
return MaterialPageRoute(builder: (_)=>AddTeam());
case Routers.frinds:
return MaterialPageRoute(builder: (_)=>Frindes());
case Routers.personDetiler:
return MaterialPageRoute(builder: (_)=>PersonDitals());
case Routers.profile:
return MaterialPageRoute(builder: (_)=>Profile());

case Routers.code:
return MaterialPageRoute(builder: (_)=>Code());
case Routers.booking:
return MaterialPageRoute(builder: (_)=>Booking());
case Routers.detilesbooking:
return MaterialPageRoute(builder: (_)=>DetailsBooking());
case Routers.finishBooking:
return MaterialPageRoute(builder: (_)=>FinishBooking());
case Routers.search:
return MaterialPageRoute(builder: (_)=>SearchPlayground());
case Routers.reguest:
return MaterialPageRoute(builder: (_)=>Request());
case Routers.news:
return MaterialPageRoute(builder: (_)=>News());
case Routers.detilsNews:
return MaterialPageRoute(builder: (_)=>DetailsNews());
case Routers.competition:
return MaterialPageRoute(builder: (_)=>Competition());
case Routers.selectPerson:
return MaterialPageRoute(builder: (_)=>SelectPersoin());
case Routers.sel:
return MaterialPageRoute(builder: (_)=>NewBooking());
case Routers.detils_competition:
return MaterialPageRoute(builder: (_)=>DetilsCompetition());
case Routers.teams:
return MaterialPageRoute(builder: (_)=>Teames());
 }
 return null;

}
}