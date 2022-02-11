import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/controllers/current_page.dart';
import 'package:kucing_app/app/getx/routes/routePages.dart';
import 'package:kucing_app/app/ui/Pages/home.dart';
import 'package:kucing_app/app/ui/Pages/splash.dart';




void main() {
  runApp(const MyApp());
  final currentC = Get.put(CurrentPageController());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
            getPages: RoutePages.routepage,

    );
  }
}