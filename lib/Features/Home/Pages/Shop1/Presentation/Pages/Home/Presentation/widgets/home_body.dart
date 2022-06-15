import 'package:flutter/material.dart';
import '../../../../../../../../../../main.dart';
import 'big_slider_2.dart';
import 'deals_of_day_.dart';
import 'find_your_style_.dart';
import 'sales_start.dart';
import 'the_kids_corner_.dart';
import 'Top_Slider.dart';

// First Class For First Page on Application >> Home_Page
class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Home1State();
  }
}

// Second Class For First Page on Application >> Home_Page
class Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSwitched == false ? Colors.white : Colors.black,
      child: Container(
        color: isSwitched == false ? Colors.white : Colors.black,
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Top_Slider(),
            ReadyDivider, // I made a ready one on the main function to make it easy in use later
            BigSlider(),
            const DealsofDay(),
            ReadyDivider,
            const FindYourStyle(),
            const SalesStartIn(),
            ReadyDivider,
            const SizedBox(
              height: 5,
            ),
            Text(
              "The Kids Corner",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5,
                  color: isSwitched == false ? Colors.black : Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Clothing for your Lil's one's",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey),
            ),
            const ThekidsCorner(),
            ReadyDivider,
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
