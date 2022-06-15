import 'package:flutter/material.dart';

import '../../../../../../../../../main.dart';

class TopSlider extends StatelessWidget {
  TopSlider({Key? key}) : super(key: key);
  final List info = [
    {"url": "images/k4.PNG", "type": "Kids", "nav": "shop_kids3"},
    {"url": "images/k101.png", "type": "Men", "nav": "shop_men3"},
    {"url": "images/kwomen.png", "type": "Women", "nav": "shop_women3"},
  ];
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
                  Navigator.pushNamed(context, "${info[i]["nav"]}");
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
