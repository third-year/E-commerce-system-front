import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/widget/Text1.dart';
import '../ui/widget/inkwell1.dart';
import '../ui/widget/textFilde.dart';
import '../widget/textbutton.dart';
import 'newpassword.dart';

class code extends StatelessWidget {

  var codecontroller =TextEditingController();
  var formkay =GlobalKey<FormState>();

  code({
    required email
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image:  AssetImage('assets/images/12.png'),fit: BoxFit.cover)
          ),
          child: ListView(
            children:[ Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formkay,
                child: Column(children: [
                  SizedBox(height: 200,),
                  Text1(text: "Find your account",size: 28,color: Colors.yellow,),
                  SizedBox(height: 30,),
                   Text1(text:'please enter code sent to your',
                    fontWeight: FontWeight.w300,),
                  SizedBox(height: 20,),
                  DefaultTextaField(hint: 'enter the code',icon: Icons.create_sharp,
                    controller:codecontroller,

                    color: Colors.grey[300],
                    color1: Color(0xFF439A97),

                    validate1:   ( value){
                      if(value==null ||value.isEmpty){ return 'please enter the code';}
                      return null;

                    },),
                  SizedBox(height: 30,),
                  DefaultButton(text: 'NEXT',s: 25,
                    onTap: (){
                  //  ELoginCubit.get(context).codepaasswordc(code: codecontroller.text);

                      if(formkay.currentState!.validate()) {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => newpassword()),);
                      };},
                    color: Color(0xFF439A97),w: 180,h: 50,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text1(text: 'Not recieved Code?',fontWeight: FontWeight.w300,size: 18,),
                      textbutton(text: 'Resent',onTap: (){},color: Colors.yellow,)

                    ],
                  )
                ],),
              ),
            ),
          ]),



        ));;
  }
}
