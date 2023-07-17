import 'package:flutter/material.dart';

import '../ui/widget/Text1.dart';
import '../ui/widget/inkwell1.dart';
import '../ui/widget/textFilde.dart';

class newpassword extends StatelessWidget {

  var passcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var formkay =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:  AssetImage('assets/images/12.png'),fit: BoxFit.cover)
      ),child: ListView(
        children:[ Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key:formkay ,

            child: Column(children: [

            SizedBox(height: 140,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text1(text: 'Great new password',size: 30,color: Colors.yellow[700],),
                    SizedBox(height: 25,),
                    Text1(text: 'Great a new password and never share it with anyone for safe use',
                      fontWeight: FontWeight.w300,
                      size: 20,), ],
                ),
              ),



            SizedBox(height: 20,),
              DefaultTextaField(hint: 'New Password',icon: Icons.lock,color1: Color(0xFF439A97),
                controller: passcontroller,
                color: Colors.grey[300],
                validate1:   ( value){
              if(value==null ||value.isEmpty){ return 'please enter your new password';}
              return null;

            },
                obscure: true

            ),


            SizedBox(height: 25,),
            DefaultTextaField(hint: 'Confirm New Password',
              controller: passwordcontroller,
              color: Colors.grey[300],color1: Color(0xFF439A97),
              obscure: true,
              validate1:   ( value){
                if(value==null ||value.isEmpty){ return 'please enter your password';}
                return null;

              },
            ),
            SizedBox(height: 40,),
              DefaultButton(text: 'LOGIN',color:Color(0xFF439A97),


                w: 140, h: 60, onTap: (){

               // ELoginCubit.get(context).newpaasswordc(password: passcontroller.text, conpassword: passwordcontroller.text);

                if(formkay.currentState!.validate()){
                  print('yas');
                    }

                },s: 25,)
    ],),
          ),
        ),
      ]),



    ));
  }
}
