import 'package:flutter/material.dart';
import 'package:kucing_app/app/utils/theme.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
      String dropdownvalue = 'Kattierre';

    var items = [
      'Kattierre',
      'Kattieras',
      'Kattiersd',
    ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style:
                  BlackText.copyWith(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Row(
              children: [
                //  Drop down user name
                DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  style: BlackText.copyWith(fontSize: 22, fontWeight : FontWeight.bold),
                  iconSize : 30,
                  iconEnabledColor: Colors.white,

                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),

              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Notify.png")),
            ),
          ),
        )
      ],
    );
  }
}