// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../../../../main.dart';
import '../Pages/Cart/cart_view.dart';
import '../Pages/Home/home_view.dart';

// the 5 Pages/Widgets to use it throw BottomNavigationBar
List<Widget> main_pages_widget = [
  Shop3_Homeview(),
  const Shop3CartView(),
];
int bottom_navigation_index = 0; // BottomNavigationBar
bool notify = false; // Dark Mode

class Shop3body extends StatefulWidget {
  const Shop3body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Shop3bodyState();
  }
}

// Class of Main_PageState
class Shop3bodyState extends State<Shop3body> {
  GlobalKey<ScaffoldState> scaffoldkey =
      GlobalKey<ScaffoldState>(); // to control for the Drawer
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      // Bottom Navigation Bar for 5 Widgets like Home , Category , profile , Cart , Whitelist
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottom_navigation_index,
        selectedItemColor: const Color(0xFF699E96),
        selectedFontSize: 15,
        unselectedFontSize: 13,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        unselectedItemColor: isSwitched == false ? Colors.black : Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "Home",
              backgroundColor:
                  isSwitched == false ? Colors.white : Colors.black),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              label: "Cart",
              backgroundColor:
                  isSwitched == false ? Colors.white : Colors.black),
        ],
        onTap: (index) {
          setState(() {
            bottom_navigation_index = index;
          });
        },
      ),
      body: main_pages_widget.elementAt(bottom_navigation_index),
    );
  }
}
