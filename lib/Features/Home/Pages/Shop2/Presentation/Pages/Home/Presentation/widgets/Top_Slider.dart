import 'package:flutter/material.dart';
import '../../../../../../../../../main.dart';

// ignore: must_be_immutable
class TopSlider extends StatelessWidget {
  List info = [
    {"url": "images/13.png", "type": "Kids", "nav": "shop_kids2"},
    {"url": "images/24.png", "type": "Men", "nav": "shop_men2"},
    {"url": "images/3.png", "type": "Women", "nav": "shop_women2"},
  ];

  TopSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: info.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 4),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "${info[i]['nav']}");
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(info[i]["url"]),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "Shop_Now");
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      info[i]["type"],
                      style: TextStyle(
                          color:
                              isSwitched == false ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
