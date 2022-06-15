import 'package:flutter/material.dart';
import '../../../../../../main.dart';
import '../Pages/Cart/cart_view_.dart';
import '../Pages/Home/home_view.dart';

// the 5 Pages/Widgets to use it throw BottomNavigationBar
// ignore: non_constant_identifier_names
List<Widget> main_pages_widget = [
  Shop1Homeview(),
  const Shop1CartView(),
];
// ignore: non_constant_identifier_names
int bottom_navigation_index = 0; // BottomNavigationBar
bool notify = false; // Dark Mode

// Class for Main Page on the App which can use it to go for 5 pages like Home >> Category >> Wishlist >> Profile >> Cart
// ignore: camel_case_types
class Shop1_body extends StatefulWidget {
  const Shop1_body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Shop1bodyState();
  }
}

// Class of Main_PageState
class Shop1bodyState extends State<Shop1_body> {
  final GlobalKey<ScaffoldState> scaffoldkey =
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
