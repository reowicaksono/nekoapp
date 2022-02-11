import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/controllers/current_page.dart';
import 'package:kucing_app/app/ui/Pages/profile.dart';
import 'package:kucing_app/app/ui/widgets/Home/body/homeCard.dart';
import 'package:kucing_app/app/utils/theme.dart';
import 'package:animate_do/animate_do.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabs = [
    HomeCard(),
    Center(child: Text("Search", style: TextStyle(color: Colors.white))),
    Center(child: Text("Favourite", style: TextStyle(color: Colors.white))),
    Profile(),
    Center(child: Text("Add item", style: TextStyle(color: Colors.white))),
  ];

  final currentC = Get.find<CurrentPageController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CurrentPageController>(builder: (_)=>Scaffold(
      backgroundColor: WarnaOren,
      body: FadeIn(
          duration: Duration(milliseconds: 1000),
          delay: Duration(milliseconds: 1000),
          child: tabs[currentC.currentpagetabs]),
      floatingActionButton: Stack(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: FloatingActionButton(
              backgroundColor: Color(0xffF97C22),
              onPressed: () => currentC.ChangePageTabs(4),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffF97C22),
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IkonTombol(halaman: 0, url: "assets/home.png"),
                  IkonTombol(halaman: 1, url: "assets/search.png"),
                  IkonTombol(halaman: 2, url: "assets/favorite.png"),
                  IkonTombol(halaman: 3, url: "assets/account.png"),
                ],
              ))),
    ));
  }

  GestureDetector IkonTombol({int halaman = 0, String url = ''}) {
    return GestureDetector(
      onTap: () => currentC.ChangePageTabs(halaman),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              currentC.currentpagetabs == halaman
                  ? BoxShadow(
                      color: WarnaPutihabu,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  : BoxShadow(blurRadius: 0),
            ],
            image: DecorationImage(
                image: AssetImage("${url}"), fit: BoxFit.cover)),
      ),
    );
  }
}
