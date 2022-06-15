import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesKids3 = [
  {"url": "images/k1.PNG", "description": "Red T-shirt"},
  {"url": "images/k2.PNG", "description": "Blue T-shirt"},
  {"url": "images/k3.PNG", "description": "Black T-shirt "},
  {"url": "images/k4.PNG", "description": "Short T-Shirt"},
  {"url": "images/k5.PNG", "description": "Nice T-Shirt"},
  {"url": "images/k6.PNG", "description": "Green T-Shirt"},
  {"url": "images/k7.PNG", "description": "White T-Shirt"},
  {"url": "images/k8.PNG", "description": "Nice Dress"},
  {"url": "images/k9.PNG", "description": "Blue Trouser"},
  {"url": "images/k10.PNG", "description": "Great T-Shirt"},
];

class ShopKids3 extends StatelessWidget {
  const ShopKids3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Kids Collection", details: categoriesKids3);
  }
}
