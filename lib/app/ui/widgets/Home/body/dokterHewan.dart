import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kucing_app/app/getx/routes/routeNames.dart';
import 'package:kucing_app/app/repository/Model/Home/dokterHewanModel.dart';
import 'package:kucing_app/app/utils/theme.dart';

class DokterHewan extends StatelessWidget {
  final DokterHewanModel dokterHewanModel;
  DokterHewan(this.dokterHewanModel);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 1000),
      delay: Duration(milliseconds: 500),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(RouteNames.detailpage);
        },
        child: Container(
          height: 130,
          width: MediaQuery.of(context).size.width - (2 * edge),
          decoration: BoxDecoration(
            color: WarnaPutih,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: edge,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: WarnaMerahJambu,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage("${dokterHewanModel.url}"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: edge - 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${dokterHewanModel.nama}",
                          style: BlackText.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${dokterHewanModel.subJudul}",
                          style: BlackText.copyWith(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                        SizedBox(
                          height: (edge * 2 - 15),
                        ),
                        Text(
                          "\$ ${dokterHewanModel.harga}",
                          style: BlackText.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                Opacity(
                  opacity: 0.4,
                  child: Container(
                    height: 80,
                    width: 30,
                    child: Icon(CupertinoIcons.chevron_right),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
