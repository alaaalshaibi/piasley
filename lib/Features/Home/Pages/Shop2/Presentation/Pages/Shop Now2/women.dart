import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesWomen2 = [
  {"url": "images/2.png", "description": "Nice Blouse"},
  {"url": "images/3.png", "description": "Blue Jacket"},
  {"url": "images/4.png", "description": "Long Trouser "},
  {"url": "images/5.png", "description": "Oversize Jacket"},
  {"url": "images/6.png", "description": "Oversize T-Shirt"},
  {"url": "images/7.png", "description": "Grey Jacket"},
  {"url": "images/8.png", "description": "Blue T-Shirt"},
  {"url": "images/9.png", "description": "Blue Oversize T-Shirt"},
  {"url": "images/10.png", "description": "Blue T-Shirt"},
  {"url": "images/11.png", "description": "Grey T-Shirt"},
];

class ShopWomen2 extends StatelessWidget {
  const ShopWomen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Women Collection", details: categoriesWomen2);
  }
}
