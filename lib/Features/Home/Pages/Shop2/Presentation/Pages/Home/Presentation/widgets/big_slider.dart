import 'package:flutter/material.dart';
import '../../../../../../../../../main.dart';
import '../../../Shop Now2/men.dart';
import '../../../Shop Now2/women.dart';

// ignore: must_be_immutable
class BigSlider extends StatelessWidget {
  List photos = [
    {"url": "images/1.jpg", "welcome": "Welcome To MultiKart"},
    {"url": "images/2.jpg"},
  ];

  BigSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: isSwitched == false ? Colors.white : Colors.black,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Positioned(
                  child: Image.asset(
                "images/1.jpg",
                width: 350,
                fit: BoxFit.fill,
              )),
              const Positioned(
                  top: 45,
                  left: 12,
                  child: Text(
                    "Welcome To Max",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  top: 68,
                  left: 12,
                  child: Text(
                    "Flat 50% OFF",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF699E96),
                        fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  top: 97,
                  left: 12,
                  child: Text(
                    "Free Shopping until Mid Night",
                    style: TextStyle(fontSize: 12),
                  )),
              Positioned(
                  top: 115,
                  left: 12,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShopMen2()));
                      },
                      color: const Color(0xFF699E96).withOpacity(0.7),
                      minWidth: 120,
                      height: 38,
                      textColor:
                          isSwitched == false ? Colors.white : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "SHOP NOW",
                        style: TextStyle(fontSize: 17),
                      ))),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Stack(
            children: [
              Positioned(
                  child: Image.asset(
                "images/2.jpg",
                width: 340,
                fit: BoxFit.cover,
              )),
              const Positioned(
                  top: 45,
                  left: 12,
                  child: Text(
                    "Welcome To MultiKart",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  top: 68,
                  left: 12,
                  child: Text(
                    "Flat 75% OFF",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF699E96),
                        fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  top: 97,
                  left: 12,
                  child: Text(
                    "Free Shopping until Next Week",
                    style: TextStyle(fontSize: 10),
                  )),
              Positioned(
                top: 112,
                left: 12,
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShopWomen2()));
                    },
                    color: const Color(0xFF699E96).withOpacity(0.7),
                    minWidth: 120,
                    height: 38,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textColor:
                        isSwitched == false ? Colors.white : Colors.black,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "SHOP NOW",
                      style: TextStyle(fontSize: 17),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
