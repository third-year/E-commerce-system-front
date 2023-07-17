import 'package:flutter/material.dart';
import 'package:shopping/ui/style/colors.dart';

import '../../ui/widget/inkwell1.dart';

class EconoProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'.toUpperCase(),
            style: TextStyle(fontSize: 30.0,
                color: ColorApp.secondBackColor,
                fontWeight: FontWeight.w500)
        ),
        actions: [Icon(Icons.person,
        color: ColorApp.secondBackColor,
          size: 40.0,
        )],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              CircleAvatar(
                  radius: 100.0,
                  backgroundImage:NetworkImage('https://www.shareicon.net/data/512x512/2016/08/18/809259_user_512x512.png')),
              SizedBox(height: 40.0,),
              Container(
                child:
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text('User Name :',
                        style: TextStyle(color:ColorApp.firstBackColor,fontWeight: FontWeight.w500,fontSize: 26.0),
                      ),
                      SizedBox(width: 17.0,),
                      Text('Tala Yassin',
                      style: TextStyle(color: Colors.white,fontSize: 25.0),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(color:ColorApp.lightColor,
                 borderRadius: BorderRadius.circular(30.0),
                ),
                width: double.infinity,
                height: 70.0,
              ),
              SizedBox(height: 20.0,),
              Container(
                child:
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text('Email :',
                        style: TextStyle(color:ColorApp.firstBackColor,fontWeight: FontWeight.w500,fontSize: 26.0),
                      ),
                      SizedBox(width: 17.0,),
                      Text('talayassin@gmail.com',
                        style: TextStyle(color: Colors.white,fontSize: 25.0),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(color:ColorApp.lightColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                width: double.infinity,
                height: 70.0,
              ),
              SizedBox(height: 20.0,),
              Container(
                child:
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text('Password :',
                        style: TextStyle(color:ColorApp.firstBackColor,fontWeight: FontWeight.w500,fontSize: 26.0),
                      ),
                      SizedBox(width: 17.0,),
                      Text('123456789',
                        style: TextStyle(color: Colors.white,fontSize: 25.0),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(color:ColorApp.lightColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                width: double.infinity,
                height: 70.0,
              ),
              SizedBox(height: 40.0,),
              DefaultButton(onTap: (){},text: 'edite'.toUpperCase(),s: 23.0 ,color: ColorApp.strongColor,w:140.0)
              // SizedBox(height: 20.0,),
              // DefaultTextaField(hint: 'Tala Yassin',size: 26.0,color:lightColor,color1: Colors.white,),
              // SizedBox(height: 20.0,),
              // DefaultTextaField(hint: 'talayassin@gmail.com',size: 26.0,color:lightColor,color1: Colors.white,),
              // SizedBox(height: 20.0,),
              // DefaultTextaField(hint: '123456789',size: 26.0,color:lightColor,color1: Colors.white,),
            ],

            ),
          ),
        ),
      ),

    );
  }

}