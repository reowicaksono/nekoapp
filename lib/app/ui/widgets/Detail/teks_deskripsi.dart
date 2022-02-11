import 'package:flutter/material.dart';
import 'package:kucing_app/app/utils/theme.dart';

class TeksDeskripsi extends StatelessWidget {
  final teksHealth =
      "American Bobtails are a very strong and healthy breed, with little known about genetic predisposition to health problems. However, they may develop hip dysplasia, and tailless American Bobtails can have spinal problems that affect their ability to control defecation. ";
  final teksHistory =
      "Purposeful development of the breed began in the late 1960s, when John and Brenda Sanders were vacationing in the American southwest. They brought home a brown tabby kitten with a short tail, whom they found during their travels.";
  final teksColors =
      "The American Bobtail’s coat can come in any pattern, including black, brown, chocolate, cinnamon, blue, lilac, fawn, red and cream, with or without white.";
  final teksFood =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer bibendum tellus lacus, nec posuere massa vehicula vel. Cras laoreet leo et semper venenatis. Proin blandit dapibus mollis. Phasellus ornare consequat sem, vitae faucibus lorem pulvinar nec. In hac habitasse platea dictumst. Curabitur gravida sapien eget ex euismod aliquam. Nullam et quam vel ex auctor varius et in dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.";
  final teksDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer bibendum tellus lacus, nec posuere massa vehicula vel. Cras laoreet leo et semper venenatis. Proin blandit dapibus mollis. Phasellus ornare consequat sem, vitae faucibus lorem pulvinar nec. In hac habitasse platea dictumst. Curabitur gravida sapien eget ex euismod aliquam. Nullam et quam vel ex auctor varius et in dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.";
      List<String> teks = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer bibendum tellus lacus, nec posuere massa vehicula vel. Cras laoreet leo et semper venenatis. Proin blandit dapibus mollis. Phasellus ornare consequat sem, vitae faucibus lorem pulvinar nec. In hac habitasse platea dictumst. Curabitur gravida sapien eget ex euismod aliquam. Nullam et quam vel ex auctor varius et in dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",
        "American Bobtails are a very strong and healthy breed, with little known about genetic predisposition to health problems. However, they may develop hip dysplasia, and tailless American Bobtails can have spinal problems that affect their ability to control defecation. ",
        "Purposeful development of the breed began in the late 1960s, when John and Brenda Sanders were vacationing in the American southwest. They brought home a brown tabby kitten with a short tail, whom they found during their travels.",
        "The American Bobtail’s coat can come in any pattern, including black, brown, chocolate, cinnamon, blue, lilac, fawn, red and cream, with or without white.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer bibendum tellus lacus, nec posuere massa vehicula vel. Cras laoreet leo et semper venenatis. Proin blandit dapibus mollis. Phasellus ornare consequat sem, vitae faucibus lorem pulvinar nec. In hac habitasse platea dictumst. Curabitur gravida sapien eget ex euismod aliquam. Nullam et quam vel ex auctor varius et in dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",

      ];
      final index;
      TeksDeskripsi({this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${teks[index]}",
      overflow: TextOverflow.visible,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: WarnaHitam,
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        letterSpacing: 3,
        wordSpacing: 3,
      ),
    );
  }
}
