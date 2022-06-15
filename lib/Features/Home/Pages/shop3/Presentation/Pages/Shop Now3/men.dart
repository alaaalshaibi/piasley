import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesMen3 = [
  {"url": "images/k30.jpg", "description": "Red T-shirt"},
  {"url": "images/k31.PNG", "description": "Blue Jacket"},
  {"url": "images/k32.PNG", "description": "Long T-shirt "},
  {"url": "images/k33.PNG", "description": "Oversize T-Shirt"},
  {"url": "images/k34.PNG", "description": "Nice T-Shirt"},
  {"url": "images/k35.PNG", "description": "White Jacket"},
  {"url": "images/k36.PNG", "description": "Wonderful T-Shirt"},
  {"url": "images/k37.PNG", "description": "Blue T-Shirt"},
  {"url": "images/k38.PNG", "description": "Red T-Shirt"},
  {"url": "images/k39.PNG", "description": "Green T-Shirt"},
  {"url": "images/k40.PNG", "description": "White T-Shirt"},
];

class ShopMen3 extends StatelessWidget {
  const ShopMen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Men Collection", details: categoriesMen3);
  }
}
