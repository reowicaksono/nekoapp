import 'package:flutter/material.dart';
import 'package:kucing_app/app/utils/theme.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WarnaAbuabu,
      body: SafeArea(
          child: Column(
            // 
        children: [
          Flexible(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                    
                        gradient:
                            LinearGradient(colors: [WarnaOren, WarnaOrenPutih]),
                        image: DecorationImage(
                            image: AssetImage("assets/pattern.png"),
                            fit: BoxFit.cover)),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Reo Wicaksono",
                            style: WhiteText.copyWith(
                                fontSize: 21, fontWeight: FontWeight.bold)),
                        Text(
                          "Member",
                          style:
                              WhiteText.copyWith(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red.withOpacity(0.5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "data",
                                      style: WhiteText,
                                    ),
                                    Text("data", style: WhiteText),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "data",
                                      style: WhiteText,
                                    ),
                                    Text("data", style: WhiteText),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "data",
                                      style: WhiteText,
                                    ),
                                    Text("data", style: WhiteText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),

          // 
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(

                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: double.infinity,
                  color: WarnaPutih,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: double.infinity,
                  color: WarnaPutih,
                ),
                SizedBox(
                  height: 10,
                ),
               
              ],
            ),
          )
        ],
      )),
    );
  }
}
