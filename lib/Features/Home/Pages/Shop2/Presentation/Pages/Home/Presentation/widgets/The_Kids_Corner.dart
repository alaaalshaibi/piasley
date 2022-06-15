import 'package:flutter/material.dart';
import '../../../../../../../../../core/widgets/custom_categories_cost.dart';
import '../../../../../../../../../core/widgets/custom_five_stars.dart';
import '../../../../../../../../../main.dart';

class ThekidsCorner extends StatelessWidget {
  const ThekidsCorner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      margin: const EdgeInsets.only(top: 12),
      child: GridView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.7,
          mainAxisSpacing: 20,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "shop_kids2");
                },
                child: Image.asset(
                  "images/17.png",
                  height: 190,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomFiveLoveIcon(), // The main Five Icon made on the top of this page before
              const SizedBox(
                height: 2,
              ),
              Text(
                "White Denim Jacket",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomCategoriesCost(), // This class contain this row 32.000$ 35.00$ 20%
            ],
          ),
          // ************************** Second Photo *************************
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "shop_kids2");
                },
                child: Image.asset(
                  "images/18.png",
                  height: 190,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomFiveLoveIcon(),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Blue Denim t-Shirt",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomCategoriesCost(), // This class contain this row 32.000$ 35.00$ 20%
            ],
          ),
          // *************************** Third Photo *************************
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "shop_kids2");
                },
                child: Image.asset(
                  "images/19.png",
                  height: 190,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomFiveLoveIcon(),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Black Denim t-Shirt",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomCategoriesCost(), // This class contain this row 32.000$ 35.00$ 20%
            ],
          ),
        ],
      ),
    );
  }
}
