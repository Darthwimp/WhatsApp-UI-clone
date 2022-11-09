import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:whatsapp_clone/screens/home.dart';
import 'package:whatsapp_clone/style/styles.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:Icon(Icons.whatsapp, size: 80, color: iconColor1,),
      backgroundColor: primaryColor!,
      nextScreen: Home());
  }
}
