import 'package:flutter/material.dart';
import '../../../../../../../../../core/widgets/custom_categories_cost.dart';
import '../../../../../../../../../core/widgets/custom_five_stars.dart';
import '../../../../../../../../../core/widgets/customSpace.dart';
import '../../../../../../../../../main.dart';

List _items = [
  {"title": "Rustic shirt ", "url": "images/k40.PNG"},
  {"title": "Nice Dress", "url": "images/k12.jpg"},
  {"title": "Oversize cardigan", "url": "images/k4.PNG"},
];

// The Beginning of The Kids Corner
class MayAlsolike extends StatelessWidget {
  const MayAlsolike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      margin: const EdgeInsets.only(top: 12),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.7,
          mainAxisSpacing: 20,
        ),
        itemCount: _items.length,
        itemBuilder: (context, i) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      i == 0
                          ? "shop_men3"
                          : i == 1
                              ? "shop_women3"
                              : "shop_kids3");
                },
                child: Image.asset(
                  _items[i]["url"],
                  height: 190,
                  width: 190,
                  fit: BoxFit.fill,
                ),
              ),
              CustomVerticalSpace(value: 5),
              const CustomFiveStarsIcon(), // The main Five Icon made on the top of this page before
              CustomVerticalSpace(value: 5),
              Text(
                _items[i]["title"],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
              CustomVerticalSpace(value: 5),
              const CustomCategoriesCost(), // This class contain this row 32.000$ 35.00$ 20%
            ],
          );
        },
      ),
    );
  }
}
