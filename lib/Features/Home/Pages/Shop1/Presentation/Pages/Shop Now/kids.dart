import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesKids = [
  {"url": "images/14.jpg", "description": "Amazing Dress"},
  {"url": "images/29.jpg", "description": "Blue Jacket"},
  {"url": "images/28.jpg", "description": "Long T-shirt "},
  {"url": "images/15.jpg", "description": "Orange T-Shirt"},
];

class ShopKids1 extends StatelessWidget {
  const ShopKids1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Kids Collection", details: categoriesKids);
  }
}
