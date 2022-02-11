import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/controllers/current_page.dart';
import 'package:kucing_app/app/utils/theme.dart';

class Pelayanan extends StatelessWidget {
  
  final currentC = Get.find<CurrentPageController>();

  int halaman;
  String url;
  String judul;
  double tinggi;
  double lebar;
  Pelayanan({
    this.halaman = 0,
    this.url = '',
    this.judul = '',
    this.tinggi = 50,
    this.lebar = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => currentC.ChangePage(halaman),
          child: Container(
              height: tinggi,
              width: lebar,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: WarnaPutih,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("${url}"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(WarnaHitam, BlendMode.modulate),
                    )),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "${judul}",
          style: BlackText,
        )
      ],
    );
  }
}
