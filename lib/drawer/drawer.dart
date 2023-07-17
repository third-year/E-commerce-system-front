
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../econo_project/Settings/settings.dart';
import '../econo_project/Sign_out/Sign_out.dart';
import '../econo_project/about_app/about_app.dart';
import '../econo_project/profile/econo_profile.dart';
import 'drawer_item.dart';
import 'header.dart';

class  NavigationDrawer1 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return         Directionality(textDirection: TextDirection.rtl,
        child:Drawer(

          child:   Material(
            color:Colors.white,

            child: Column(
                children: [

                  Header( ),

                  DrawerItem(
                    name:"Profile",
                    icon:Icons.person,
                    onPressed:()=> onItemPressed(context,index:0),

                  ), SizedBox(height: 20,),

                  Divider(thickness: 1,height: 9,color:Colors.black,),
                  DrawerItem(
                    name:"Settings",
                    icon:Icons.settings,
                    onPressed:()=> onItemPressed(context,index:1),
                  ),
                  SizedBox(height: 20,),
                  Divider(thickness: 1,height: 9,color:Colors.black,),
                  DrawerItem(
                    name:"About",
                    icon:Icons.book,
                    onPressed:()=> onItemPressed(context,index:2),
                  ),
                  SizedBox(height: 20,),
                  Divider(thickness: 1,height: 9,color:Colors.black,),
                  DrawerItem(
                    name:"Sign out",
                    icon:Icons.logout_outlined,
                    onPressed:()=> onItemPressed(context,index:3),
                  ),
                ]
            ),

          ),
        ));
  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) =>   EconoProfileScreen() ));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) =>   Settings() ));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) =>   AboutApp()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  SignOut()));
        break;
    }

  }


}

