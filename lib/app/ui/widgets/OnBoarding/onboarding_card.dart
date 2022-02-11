import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/routes/routeNames.dart';
import 'package:kucing_app/app/repository/Model/OnBoarding/onboarding_model.dart';
import 'package:kucing_app/app/ui/Pages/home.dart';

class OnBoardingCard extends StatelessWidget {
  final OnBoardingModel splashModel;
  OnBoardingCard(this.splashModel);
  @override
  Widget build(BuildContext context) {
    return (splashModel.id != 3)
        ? Container(
            height: double.infinity,
            child: Image.asset(
              '${splashModel.url}',
              fit: BoxFit.cover,
            ))
        : Stack(
            children: [
              Container(
                  height: double.infinity,
                  child: Image.asset(
                    '${splashModel.url}',
                    fit: BoxFit.cover,
                  )),
              Align(
                alignment: Alignment(0.0, 0.4),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        onPressed: () {
                          Get.toNamed(RouteNames.home);
                        },
                        child: Text("Get Started"))),
              )
            ],
          );
  }
}
