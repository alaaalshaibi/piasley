import 'package:flutter/material.dart';
import '../../../../../../../../../main.dart';

// ignore: non_constant_identifier_names
List images_url = [
  "images/s7.jpg",
  "images/s1.jpg",
  "images/s3.jpg",
  "images/s4.jpg",
  "images/s5.jpg",
  "images/s6.jpg",
  "images/nu.jpg",
  "images/s9.jpg",
];
// ignore: non_constant_identifier_names
var _Ready_yellow_Icon = const Icon(
  Icons.star,
  color: Color(0xFF699E96),
  size: 22,
);
// ignore: non_constant_identifier_names
var _Ready_White_Icon = Icon(
  Icons.star_border,
  color: isSwitched == false ? Colors.black : Colors.white,
  size: 22,
);
// ignore: non_constant_identifier_names
var _Ready_SizedBox_withWidth_5 = const SizedBox(
  width: 5,
);
// ignore: non_constant_identifier_names
var _Ready_Five_Icon = Row(
  children: [
    _Ready_yellow_Icon,
    _Ready_yellow_Icon,
    _Ready_yellow_Icon,
    _Ready_yellow_Icon,
    _Ready_White_Icon
  ],
);

// ********************************************** The beginning of Shop_Now_page Class ***********************************************************
class ShopNowpage extends StatefulWidget {
  const ShopNowpage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ShopNowpageState();
  }
}

class ShopNowpageState extends State<ShopNowpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: isSwitched == false ? Colors.white : Colors.black,
          elevation: 0,
          title: const Text("Youth Collection"),
          foregroundColor: isSwitched == false ? Colors.black : Colors.white,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite_outline_sharp,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("Whitelist");
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("Cart");
              },
            ),
          ],
        ),
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("Shop_Now_Photo");
                          },
                          child: Image.asset(images_url[i],
                              width: 197, height: 197),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            _Ready_Five_Icon
                          ],
                        ),
                        // The Main Five Icon made on top and i did it to make use it easy later
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Men Blue t-Shirt",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: isSwitched == false
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  "32,00",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: isSwitched == false
                                          ? Colors.black
                                          : Colors.white),
                                ),
                                _Ready_SizedBox_withWidth_5,
                                Text(
                                  "35,00",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: isSwitched == false
                                          ? Colors.black
                                          : Colors.white,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                _Ready_SizedBox_withWidth_5,
                                const Text(
                                  "20%",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF699E96)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
