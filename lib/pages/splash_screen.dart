import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/ui/pages/on_bording.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

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
         nextScreen: OnBoarding(),
           splashIconSize: 400,
      duration: 2500,
     splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      animationDuration: const Duration(seconds: 2),
    );
  }
}
