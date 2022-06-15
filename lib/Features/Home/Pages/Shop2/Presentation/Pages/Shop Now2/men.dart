import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesMen2 = [
  {"url": "images/22.png", "description": "Red T-shirt"},
  {"url": "images/23.png", "description": "Blue Jacket"},
  {"url": "images/24.png", "description": "Long T-shirt "},
  {"url": "images/25.png", "description": "Oversize T-Shirt"},
  {"url": "images/26.png", "description": "Nice T-Shirt"},
  {"url": "images/27.png", "description": "White Jacket"},
  {"url": "images/28.png", "description": "White T-Shirt"},
];

class ShopMen2 extends StatelessWidget {
  const ShopMen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Men Collection", details: categoriesMen2);
  }
}
