import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:satiate_task/choose_best_doctor.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return AnimatedSplashScreen(
     splash:'assets/final_logo.png',
     splashIconSize: 200,
     nextScreen: ChooseBestDoctor(),
     splashTransition: SplashTransition.sizeTransition,
     animationDuration: Duration(seconds: 3),
     duration: 3
   );
  }
}
