import 'package:flutter/material.dart';
import 'package:shopping/ui/style/colors.dart';


class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key,required this.name,required this.icon,required this.onPressed}) : super(key: key);
  final String name;
  final IconData icon;
  final Function() onPressed;



  @override
  Widget build(BuildContext context) {
    return  InkWell(

        onTap: onPressed,

        child:Container(
            padding: EdgeInsets.only(top:15,right: 15),
            height: 40
            ,child:Row(

          children: [

            Icon(icon,size:25,color:ColorApp.midColor,),
            SizedBox(width: 25),
            Text(name , style:TextStyle(fontSize: 15,color: ColorApp.color3, ),  )
          ],
        )
        ));
  }
}