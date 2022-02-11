import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kucing_app/app/ui/Pages/home.dart';
import 'package:kucing_app/app/utils/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon1.png"))
            ),
          ),
          SizedBox(height: 8,),
          Text("Neko App",style: BlackText,)
        ],
      ),
      nextScreen: Home(),
      splashTransition: SplashTransition.rotationTransition,
      duration: 5000,
    );
  }
}