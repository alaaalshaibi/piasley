import 'package:flutter/material.dart';
import 'Presentation/widgets/home_body.dart';
import '../../../../../../../core/widgets/customSpace.dart';
import '../../../../../../../main.dart';

class Shop1Homeview extends StatelessWidget {
  const Shop1Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: isSwitched == false ? Colors.black : Colors.white,
        backgroundColor: isSwitched == false ? Colors.white : Colors.black,
        leadingWidth: 33,
        elevation: 0,
        title: Image.asset(
          "images/log2.png",
          width: 120,
        ),
        actions: [
          const Icon(Icons.notifications_none),
          CustomHorizontalSpace(value: 15),
          const Icon(Icons.shopping_cart),
          CustomHorizontalSpace(value: 10)
        ],
      ),
      body: const Home1(),
    );
  }
}
