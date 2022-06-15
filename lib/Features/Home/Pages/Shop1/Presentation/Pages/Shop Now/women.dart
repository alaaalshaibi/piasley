import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesWomen = [
  {"url": "images/(12).jpg", "description": "Rustic every day shirt "},
  {"url": "images/(6).jpg", "description": "Long popline shirt "},
  {"url": "images/(13).jpg", "description": "Rustic shirt with deep"},
  {"url": "images/(11).jpg", "description": "Ribbed mididress"},
  {"url": "images/(8).jpg", "description": "Open blazer "},
  {"url": "images/(1).jpg", "description": "Velvet hoodie "},
  {"url": "images/(4).jpg", "description": "Cropped flared jeans "},
];

class ShopWomen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Women Collection", details: categoriesWomen);
  }
}
