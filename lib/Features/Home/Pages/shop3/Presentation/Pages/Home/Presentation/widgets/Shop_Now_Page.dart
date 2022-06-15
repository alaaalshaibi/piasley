import 'package:flutter/material.dart';
import '../../../../../../../../../main.dart';

List categoryDetails = [
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s7.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s1.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s3.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s4.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s5.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s6.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/nu.jpg",
  },
  {
    'title': 'Men blue T-Shirt',
    'url': "images/s9.jpg",
  },
];
// ignore: non_constant_identifier_names
Icon yellow_Icon = const Icon(
  Icons.star,
  color: Color(0xFF699E96),
  size: 22,
);
// ignore: non_constant_identifier_names
Icon white_Icon = Icon(
  Icons.star_border,
  color: isSwitched == false ? Colors.black : Colors.white,
  size: 22,
);
Widget verticalspace = const SizedBox(height: 10);
Widget horizonalspace = const SizedBox(width: 5);
Widget fiveIcon = Row(
  children: [
    yellow_Icon,
    yellow_Icon,
    yellow_Icon,
    yellow_Icon,
    white_Icon,
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
                          child: Image.asset(categoryDetails[i]['url'],
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
                            fiveIcon,
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
                              categoryDetails[i]['title'],
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
                                horizonalspace,
                                Text(
                                  "35,00",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: isSwitched == false
                                          ? Colors.black
                                          : Colors.white,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                horizonalspace,
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
