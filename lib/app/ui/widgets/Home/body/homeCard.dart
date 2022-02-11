import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/controllers/current_page.dart';
import 'package:kucing_app/app/getx/routes/routeNames.dart';
import 'package:kucing_app/app/repository/Model/Home/dokterHewanModel.dart';
import 'package:kucing_app/app/repository/Model/Home/jenisKucingModel.dart';
import 'package:kucing_app/app/repository/Model/Home/makananKucingModel.dart';
import 'package:kucing_app/app/ui/widgets/Home/body/dokterHewan.dart';
import 'package:kucing_app/app/ui/widgets/Home/body/jenisKucing.dart';
import 'package:kucing_app/app/ui/widgets/Home/body/makananKucing.dart';
import 'package:kucing_app/app/ui/widgets/Home/body/pelayanan.dart';
import 'package:kucing_app/app/ui/widgets/Home/header/header.dart';
import 'package:kucing_app/app/utils/theme.dart';

class HomeCard extends StatefulWidget {
  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  // Current Page
    final currentC = Get.find<CurrentPageController>();
    List<String> kategori = ["Vertenary","Cat Breeds", "Cat Disease", "Food"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WarnaOren,
      body: FadeIn(
        duration: Duration(milliseconds: 1000),
        delay: Duration(milliseconds: 500),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: GetBuilder<CurrentPageController>(builder: (_) => ListView(
            children: [
              SizedBox(
                height: edge,
              ),
              // Header Neko App
              Header(),
              SizedBox(height: 20),

              //Donate Container
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  decoration: BoxDecoration(
                      color: WarnaPutih,
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              "Lorem ipsum dolor sit amet\nconsectetur adipiscing elit \nnteger sagittis, libero porta",
                              style: BlackText.copyWith(
                                  fontWeight: FontWeight.w200, fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Container(
                              height: 30,
                              width: 100,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: WarnaOrenPutih,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Donate",
                                        style: BlackText,
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xffF69F6E),
                                        size: 15,
                                      )
                                    ],
                                  )),
                            ),
                          )
                        ],
                      ),
                      Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/icon1.png"),
                                  fit: BoxFit.cover)))
                    ],
                  )),

              // Final Donate
              SizedBox(
                height: edge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Services",
                      style: BlackText.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(RouteNames.service);
                      },
                      child: Text(
                        "See more",
                        style: BlueText.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ))
                ],
              ),
              SizedBox(
                height: edge,
              ),
              // Services
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (currentC.currentpage == 0)
                      ? Pelayanan(
                          halaman: 0,
                          url: "assets/doctor.png",
                          judul: "Vertenary",
                          tinggi: 60,
                          lebar: 60)
                      : Pelayanan(
                          halaman: 0,
                          url: "assets/doctor.png",
                          judul: "Vertenary"),
                  (currentC.currentpage == 1)
                      ? Pelayanan(
                          halaman: 1,
                          url: "assets/cat.png",
                          judul: "Cat Breeds",
                          tinggi: 60,
                          lebar: 60)
                      : Pelayanan(
                          halaman: 1,
                          url: "assets/cat.png",
                          judul: "Cat Breeds"),
                  (currentC.currentpage == 2)
                      ? Pelayanan(
                          halaman: 2,
                          url: "assets/virus.png",
                          judul: "Cat Diseases",
                          tinggi: 60,
                          lebar: 60)
                      : Pelayanan(
                          halaman: 2,
                          url: "assets/virus.png",
                          judul: "Cat Diseases"),
                  (currentC.currentpage == 3)
                      ? Pelayanan(
                          halaman: 3,
                          url: "assets/fish.png",
                          judul: "Food",
                          tinggi: 60,
                          lebar: 60)
                      : Pelayanan(
                          halaman: 3, url: "assets/fish.png", judul: "Food"),
                ],
              ),
              SizedBox(
                height: edge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(kategori[currentC.currentpage],
                        style: BlackText.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See more",
                        style: BlackText.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ))
                ],
              ),
              SizedBox(
                height: edge,
              ),

              //Dokter Hewan

              // Cat Breeds
              if (currentC.currentpage == 0) ...[
                DokterHewan(DokterHewanModel(
                  id: 1,
                  nama: "Drh. Rosa Lislirea",
                  url: "assets/dokter1.jpg",
                  subJudul: "Vetenary Dentist",
                  harga: 130,
                )),
                SizedBox(
                  height: edge,
                ),
                DokterHewan(DokterHewanModel(
                  id: 2,
                  nama: "Drh. Megumin",
                  url: "assets/dokter2.jpg",
                  subJudul: "Clinic sta",
                  harga: 405,
                )),
                SizedBox(
                  height: edge,
                ),
              ] else if (currentC.currentpage == 1) ...[
                JenisKucing(JenisKucingModel(
                  id: 1,
                  nama: "American Bobtail",
                  url: "assets/americancat.png",
                  subJudul: "Lorem ipsum",
                  harga: 15,
                )),
                SizedBox(
                  height: edge,
                ),
                JenisKucing(JenisKucingModel(
                  id: 1,
                  nama: "British Bobtail",
                  url: "assets/britishcat.png",
                  subJudul: "Lorem ipsum",
                  harga: 15,
                )),
                SizedBox(
                  height: edge,
                ),
              ] else if (currentC.currentpage == 2)
                ...[]
              else if (currentC.currentpage == 3) ...[
                MakananKucing(MakananKucingModel(
                  id: 1,
                  nama: "Whsikas",
                  url: "assets/whiskas.jpg",
                  subJudul: "Lorem ipsum",
                  harga: 2,
                )),
                SizedBox(
                  height: edge,
                ),
              ] else ...[
                Container()
              ]
            ],
          ),),
        )),
      ),
    );
  }

}
