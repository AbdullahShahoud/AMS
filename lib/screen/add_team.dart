import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data.dart';
import '../helper/Routing/rout.dart';
import '../widget/button.dart';
import 'package:flutter/material.dart';
import '../widget/dropdown.dart';
import '../widget/member.dart';
import '../widget/text_feild.dart';

class AddTeam extends StatefulWidget {
  @override
  State<AddTeam> createState() => _AddTeamState();
}

  List<String> jj = [
    '6 لاعبين',
    '7 لاعبين',
    '8 لاعبين ',
    ' 9 لاعبين',
    ' 10 لاعبين',
    '11 لاعب',
  ];
  var ControllerName;
  var ControllerPassword;
class _AddTeamState extends State<AddTeam> {
 
@override
  void initState() {
    // TODO: implement initState
    
   ControllerName=TextEditingController();
   ControllerPassword=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
             TextFrom(hint:'اسم الفريق',ico:Icons.near_me,controller:ControllerName,
                  keyboardType: TextInputType.text,color: Theme.of(context).primaryColor, context: context),
                  TextFrom(hint:'كلمة المرور',ico: Icons.security,controller:ControllerPassword,
                  keyboardType: TextInputType.number,color:Theme.of(context).primaryColor, context: context),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        buttonHome(text: 'إضافة لاعب',function: (){
          Navigator.of(context).pushNamed(Routers.selectPerson);
        },paddingH:40),
              DroubDown(selected:  jj[0],content:  jj),
            ],
          ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Member(
                 text1:  person[index].name,
                  text2: person[index].degre,
                ),
              ),
              itemCount: person.length,
            ),
          ),
        ),
          SizedBox(
            height: 60,
          ),
        buttonHome(text: 'إنشاء',function: (){}),
                
        ]),
      
    );
  }
}
