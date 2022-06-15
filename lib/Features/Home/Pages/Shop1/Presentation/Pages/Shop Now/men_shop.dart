import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/custom_shop_now.dart';

List<Map> categoriesMen = [
  {"url": "images/(10).jpg", "description": "Oversize sweatshirt"},
  {"url": "images/(9).jpg", "description": "Oversize cardigan"},
  {"url": "images/(14).jpg", "description": "Straight fit trousers"},
  {"url": "images/(3).jpg", "description": "Cropped flared jeans "},
];

class ShopMen1 extends StatelessWidget {
  const ShopMen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShopNowWidget(
        appBarTitle: "Men Collection", details: categoriesMen);
  }
}
