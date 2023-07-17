import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/apiCall/apiCall.dart';
import 'package:shopping/apiCall/cubit_sign_up/states.dart';
import 'package:shopping/ob.dart';
import 'package:shopping/ui/pages/on_bording.dart';
import 'package:shopping/ui/pages/sign_up.dart';
import 'package:shopping/ui/pages/splash_screen.dart';
import 'apiCall/cachhelper/cachHrlper.dart';
import 'apiCall/cubit_sign_up/cubit.dart';
import 'cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding();
  Bloc.observer=MyBlocObserver();
  DioHelper.initData();
 await CachHelper.init();
 //bool onBoarding = CachHelper.getData(key: 'onBoarding');
 //print(onBoarding);
  runApp( MyApp(
   // onBoarding: onBoarding,
  ));
}

class MyApp extends StatelessWidget {
 // final bool onBoarding;
   MyApp({Key? key,
  //required this.onBoarding
   }) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(providers: [
        BlocProvider(create: (BuildContext context)=>SignUpCubit()),
           BlocProvider(
    create: (BuildContext context) =>ELoginCubit(),)],
    child: BlocConsumer<SignUpCubit,SignUpStates>(
        listener: (context,state){},
        builder: (context,state){
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
          home: Splash(
          //  onBoarding: onBoarding,
          )
          );
        }
      )
      );
  }
}
class Splash extends StatelessWidget {
 //final bool onBoarding;
   Splash({Key? key,
   //required this.onBoarding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
      Column(
        children: [
          Image.asset('images/logo.png')
        ],
      ),
      centered: true,
      backgroundColor:Colors.white,
      nextScreen:
     // onBoarding?SigenUp():
      OnBoarding(),
      splashIconSize: 400,
      duration: 2500,
      splashTransition: SplashTransition.slideTransition,
      animationDuration: const Duration(seconds: 2),
    );
  }
}