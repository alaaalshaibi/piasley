import 'package:flutter/material.dart';
import '../../../../../../../../../main.dart';
class Top_Slider extends StatelessWidget {
  List info = [
    {"url": "images/29.jpg", "type": "Kids","nav":"shop_kids1"},
    {"url": "images/men1.png", "type": "Men","nav":"shop_men1"},
    {"url": "images/women1.png", "type": "Women","nav":"shop_women1"},
  ];
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
                          Navigator.pushNamed(context,"${info[i]['nav']}");},
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(info[i]["url"]),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, "Shop_Now");
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      info[i]["type"],
                      style: TextStyle(color: isSwitched== false? Colors.black : Colors.white, fontWeight: FontWeight.bold),
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
