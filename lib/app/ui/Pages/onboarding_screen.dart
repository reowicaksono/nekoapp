import 'package:flutter/material.dart';
import 'package:kucing_app/app/repository/Model/OnBoarding/onboarding_model.dart';
import 'package:kucing_app/app/ui/widgets/OnBoarding/onboarding_card.dart';
import 'package:kucing_app/app/ui/widgets/OnBoarding/onboarding_card.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<OnBoardingScreen> {

  // Photos from google
  final pages = [
    OnBoardingCard(OnBoardingModel(id : 1,url: 'assets/Splash1.png')),
    OnBoardingCard(OnBoardingModel(id: 2,url: 'assets/Splash2.png')),
    OnBoardingCard(OnBoardingModel(id: 3,url: 'assets/Splash3.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return LiquidSwipe(
            pages: pages,
            fullTransitionValue: 880,
            waveType: WaveType.circularReveal,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.black45,),
            positionSlideIcon: 0.8,
            onPageChangeCallback: (page) {
              print(page);
            },
            liquidController: LiquidController(),
          );
        },
      ),
    );
  }
}
