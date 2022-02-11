import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/controllers/current_page.dart';
import 'package:kucing_app/app/getx/controllers/favourite_color.dart';
import 'package:kucing_app/app/ui/widgets/Detail/teks_deskripsi.dart';
import 'package:kucing_app/app/utils/theme.dart';

class DetailPage extends StatelessWidget {
  final currentC = Get.find<CurrentPageController>();

  final favouriteC = Get.put(FavouriteColor(),permanent: true);
  List<String> deskripsi = ["Food", "Health", "History", "Color", "Dummy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WarnaOrenPutih,
      body: SafeArea(
          child: Stack(
        children: [
          // Gambar
          Stack(
            children: [
              Image(
                image: AssetImage("assets/pattern.png"),
                fit: BoxFit.cover,
                height: 350,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: Image(
                  image: AssetImage("assets/britishcat.png"),
                  fit: BoxFit.cover,
                  height: 270,
                  width: 270,
                ),
              ),
            ],
          ),
          ListView(
            children: [
              SizedBox(
                height: 320,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: WarnaPutih,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "British Bobtail",
                        style: BlackText.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.location_solid,
                            color: WarnaHitam,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "United State, Minnesota",
                            style: BlackText.copyWith(
                                fontWeight: FontWeight.w200, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GetBuilder<CurrentPageController>(
                        builder: (_) => Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                (currentC.currentpagecategories == 0)
                                    ? kategori(
                                        halaman: 0,
                                        url: 'assets/fish.png',
                                        tinggi: 70,
                                        lebar: 70,
                                        warnaIcon: WarnaOrenMerah,
                                        tinggiIcon: 40,
                                        lebarIcon: 40,
                                        warnaBg: WarnaOrenPutih)
                                    : kategori(
                                        halaman: 0,
                                        url: 'assets/fish.png',
                                      ),
                                SizedBox(
                                  width: 30,
                                ),
                                (currentC.currentpagecategories == 1)
                                    ? kategori(
                                        halaman: 1,
                                        url: 'assets/health.png',
                                        tinggi: 70,
                                        lebar: 70,
                                        tinggiIcon: 40,
                                        lebarIcon: 40,
                                        warnaIcon: WarnaOrenMerah,
                                        warnaBg: WarnaOrenPutih)
                                    : kategori(
                                        halaman: 1,
                                        url: 'assets/health.png',
                                      ),
                                SizedBox(
                                  width: 30,
                                ),
                                (currentC.currentpagecategories == 2)
                                    ? kategori(
                                        halaman: 2,
                                        url: 'assets/history.png',
                                        tinggi: 70,
                                        lebar: 70,
                                        tinggiIcon: 40,
                                        lebarIcon: 40,
                                        warnaIcon: WarnaOrenMerah,
                                        warnaBg: WarnaOrenPutih)
                                    : kategori(
                                        halaman: 2,
                                        url: 'assets/history.png',
                                      ),
                                SizedBox(
                                  width: 30,
                                ),
                                (currentC.currentpagecategories == 3)
                                    ? kategori(
                                        halaman: 3,
                                        url: 'assets/color.png',
                                        tinggi: 70,
                                        lebar: 70,
                                        tinggiIcon: 40,
                                        lebarIcon: 40,
                                        warnaIcon: WarnaOrenMerah,
                                        warnaBg: WarnaOrenPutih)
                                    : kategori(
                                        halaman: 3,
                                        url: 'assets/color.png',
                                      ),
                                SizedBox(
                                  width: 30,
                                ),
                                (currentC.currentpagecategories == 4)
                                    ? kategori(
                                        halaman: 4,
                                        url: 'assets/cat.png',
                                        tinggi: 70,
                                        lebar: 70,
                                        tinggiIcon: 40,
                                        lebarIcon: 40,
                                        warnaIcon: WarnaOrenMerah,
                                        warnaBg: WarnaOrenPutih)
                                    : kategori(
                                        halaman: 4,
                                        url: 'assets/cat.png',
                                      ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            )),
                      ),
                      Row(
                        children: [
                          Text(
                            "Description",
                            style: BlackText.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 16,
                            width: 2,
                            color: WarnaHitam,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GetBuilder<CurrentPageController>(
                            builder: (_) => Text(
                              deskripsi[currentC.currentpagecategories],
                              style: BlackText.copyWith(
                                  fontWeight: FontWeight.w300, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GetBuilder<CurrentPageController>(
                        builder: (_) => Container(
                          // height should be fixed for vertical scrolling
                          height: 200.0,
                          decoration: BoxDecoration(
                            // adding borders around the widget
                            border: Border.all(
                              color: WarnaOrenPutih,
                              width: 2.0,
                            ),
                          ),
                          child: Expanded(
                            child: ListView(
                              children: [
                                SingleChildScrollView(
                                  // for Vertical scrolling
                                  scrollDirection: Axis.vertical,
                                  child: FadeInUpBig(
                                    duration: Duration(milliseconds: 1000),
                                    delay: Duration(milliseconds: 500),
                                    child: TeksDeskripsi(
                                      index: currentC.currentpagecategories,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30),
                      // Button
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: WarnaOrenMerah,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              "Dummy Button",
                              style: WhiteText,
                            ))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: AssetImage("assets/btn_back.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    favouriteC.changeFavouriteColor();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: edge, top: 18),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: WarnaPutih,
                            borderRadius: BorderRadius.circular(25)),
                        child: Obx(() => Icon(
                              Icons.favorite,
                              color: (favouriteC.isFavouriteRed.value)
                                  ? Colors.red
                                  : WarnaAbuabu,
                            ))),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  Column kategori({
    int halaman = 0,
    String url = '',
    double tinggi = 60,
    double lebar = 60,
    Color warnaBg = Colors.grey,
    Color warnaIcon = Colors.black45,
    double tinggiIcon = 25,
    double lebarIcon = 25,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => currentC.ChangePageCategories(halaman),
          child: Container(
              height: tinggi,
              width: lebar,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: warnaBg,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: tinggiIcon,
                    width: lebarIcon,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("${url}"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(warnaIcon, BlendMode.modulate),
                    )),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
