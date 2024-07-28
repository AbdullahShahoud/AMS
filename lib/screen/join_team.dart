import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import '../widget/button.dart';
import '../widget/text_feild.dart';

class JoinTeam extends StatefulWidget {
  @override
  State<JoinTeam> createState() => _JoinTeamState();
}
var controllerPass;
var controllerNum;
class _JoinTeamState extends State<JoinTeam> {
 @override
  void initState() {
    controllerNum=TextEditingController();
    controllerPass=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFrom(hint:'اسم الفريق',ico: Icons.near_me,controller:controllerNum,
                    keyboardType: TextInputType.text,color: Theme.of(context).primaryColor
                    , context: context),
               TextFrom(hint:'كلمة المرور',ico: Icons.security,controller:controllerPass,
                    keyboardType: TextInputType.number,color: Theme.of(context).primaryColor
                    , context: context),
            SizedBox(
              height: 70.h,
            ),
            buttonHome(text: 'انضمام',function: (){}),
            SizedBox(
              height: 40.h,
            ),
          ]),
        
      );
  }
  
}
