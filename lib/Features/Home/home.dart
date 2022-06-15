import 'package:flutter/material.dart';
import '../../main.dart';

// Some Variables used during Making Drawer()
final List<Widget> drawerIcons = [
  const Icon(
    Icons.home,
    color: Colors.grey,
    size: 27,
  ),
  const Icon(
    Icons.language,
    color: Colors.grey,
    size: 27,
  ),
  const Icon(
    Icons.notifications,
    color: Colors.grey,
    size: 27,
  ),
  const Icon(
    Icons.settings,
    color: Colors.grey,
    size: 27,
  ),
  const Icon(
    Icons.info_rounded,
    color: Colors.grey,
    size: 27,
  ),
];
final List drawerTitle = [
  "Home",
  "Language",
  "Notifications",
  "Settings",
  "About Us"
];
final List drawerSubTitle = [
  "Men, Women, Kids, Beauty",
  "Select Your language here",
  "Offers, Order Tracking Messages",
  "Dark Mode, rtl , Notifications",
  "About App"
];
List drawerNavIndex = [
  'home',
  '',
  'notification',
  '',
  ''
]; // to transfer between buttons throw this Navigator.pushNamed()

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List navIndex = [
    'shop1_view',
    'shop2_view',
    'shop3_view'
  ]; // to transfer between buttons throw this Navigator.pushNamed()
  List imagIndex = ['images/log2.png', 'images/log1.png', 'images/log3.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color(0xff699E96),
      ),
      drawer: Drawer(
          child: Container(
        color: isSwitched == false ? Colors.white : Colors.black,
        child: ListView(
          shrinkWrap: true,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: isSwitched == false
                      ? const Color(0xFF699E96).withOpacity(1)
                      : const Color(0xFF699E96)),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("images/women1.png"),
              ),
              accountName: const Text(
                "We'am Ihsan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text(
                "We'am Ihsan22@gmail.com",
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              title: Text(
                "Dark Mode",
                style: TextStyle(
                    fontSize: 16.5,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
              leading: const Icon(Icons.settings, size: 25, color: Colors.grey),
              trailing: Switch(
                value: isSwitched,
                activeColor: isSwitched == false ? Colors.black : Colors.white,
                onChanged: (val) {
                  setState(
                    () {
                      isSwitched = val;
                    },
                  );
                },
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: drawerIcons.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      // Divider(color: isSwitched== false? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.3),thickness: 0.2,),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "${drawerNavIndex[i]}");
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, bottom: 8),
                          margin: const EdgeInsets.all(0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              drawerIcons[i],
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    drawerTitle[i],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: isSwitched == false
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    drawerSubTitle[i],
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ],
        ),
      )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 20, childAspectRatio: 2),
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  // to go to certain shop by index
                  Navigator.pushNamed(context, "${navIndex[i]}");
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.withOpacity(0.1)),
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      imagIndex[i],
                      fit: BoxFit.fitWidth,
                    )),
              );
            }),
      ),
    );
  }
}
