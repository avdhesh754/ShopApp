import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:shopapp/Views/HomeScreen.dart';
import 'package:shopapp/Views/btm_bar.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Image.asset('images/logo.png'),
        ),
        splashTransition: SplashTransition.fadeTransition,

        duration: 3000,
        nextScreen: BottomBarScreen());

  }
}
