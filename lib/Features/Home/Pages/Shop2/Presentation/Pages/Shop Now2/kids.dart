import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesKids2 = [
  {"url": "images/12.png", "description": "Red T-shirt"},
  {"url": "images/13.png", "description": "Blue T-shirt"},
  {"url": "images/14.png", "description": "Black T-shirt "},
  {"url": "images/15.png", "description": "Short T-Shirt"},
  {"url": "images/16.png", "description": "Nice T-Shirt"},
  {"url": "images/17.png", "description": "Green T-Shirt"},
  {"url": "images/18.png", "description": "White T-Shirt"},
  {"url": "images/19.png", "description": "Nice Dress"},
  {"url": "images/20.png", "description": "Blue Trouser"},
  {"url": "images/21.png", "description": "Great T-Shirt"},
];

class ShopKids2 extends StatelessWidget {
  const ShopKids2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Kids Collection", details: categoriesKids2);
  }
}
