import 'package:flutter/material.dart';
import '../../../../../../../main.dart';
import 'Presentation/widgets/home_body.dart';
class Shop3_Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: isSwitched==false? Colors.black : Colors.white,
        backgroundColor: isSwitched==false? Colors.white : Colors.black,
        leadingWidth: 33,
        elevation: 0,
        title: Image.asset("images/log3.png",width: 120,),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.notifications_none),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.favorite_outline_sharp),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Home3(),
    );
  }
}
