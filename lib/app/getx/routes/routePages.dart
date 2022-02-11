import 'package:get/get.dart';
import 'package:kucing_app/app/getx/routes/routeNames.dart';
import 'package:kucing_app/app/ui/Pages/detail.dart';
import 'package:kucing_app/app/ui/Pages/home.dart';
import 'package:kucing_app/app/ui/Pages/service.dart';
import 'package:kucing_app/app/ui/Pages/onboarding_screen.dart';
import 'package:kucing_app/app/ui/Pages/splash.dart';

class RoutePages {
  static final routepage = [
    GetPage(
      name: RouteNames.home,
      page: () => Home(),
    ),
    GetPage(
      name: RouteNames.onboarding,
      page: () => OnBoardingScreen(),
    ),
    GetPage(
      name: RouteNames.service,
      page: () => Service(),
    ),
    GetPage(
      name: RouteNames.detailpage,
      page: () => DetailPage(),
    ),
    GetPage(
      name: RouteNames.splash,
      page: () => SplashScreen(),
    ),
  ];
}
