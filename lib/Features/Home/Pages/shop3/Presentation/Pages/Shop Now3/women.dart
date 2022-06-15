import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesWomen3 = [
  {"url": "images/k11.jpg", "description": "Nice Blouse"},
  {"url": "images/k12.jpg", "description": "Blue Jacket"},
  {"url": "images/k13.jpg", "description": "Long Trouser "},
  {"url": "images/k14.jpg", "description": "Oversize Jacket"},
  {"url": "images/k15.PNG", "description": "Oversize T-Shirt"},
  {"url": "images/k16.PNG", "description": "Grey Jacket"},
  {"url": "images/k17.PNG", "description": "Blue T-Shirt"},
  {"url": "images/k18.PNG", "description": "Blue Oversize T-Shirt"},
  {"url": "images/k19.PNG", "description": "Blue T-Shirt"},
  {"url": "images/k20.PNG", "description": "Grey T-Shirt"},
];

class ShopWomen3 extends StatelessWidget {
  const ShopWomen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Women Collection", details: categoriesWomen3);
  }
}
