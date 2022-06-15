import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../../core/widgets/custom_categories_cost.dart';
import '../../../../../../../../../core/widgets/custom_five_stars.dart';
import '../../../../../../../../../main.dart';
import '../../../../manager/provider_.dart';

List _items1 = [
  {"title": "Cropped flared jeans", "url": "images/k34.PNG"},
  {"title": "Velvet hoodie", "url": "images/k39.PNG"},
  {"title": "Rustic every day shirt", "url": "images/k30.jpg"},
  {"title": "Oversize cardigan", "url": "images/k36.PNG"},
];
List _items2 = [
  {"title": "Straight fit trousers", "url": "images/k11.jpg"},
  {"title": "Nice Shirt", "url": "images/k13.jpg"},
  {"title": "Wonderful Shirt", "url": "images/k14.jpg"},
  {"title": "Amazing Dress", "url": "images/k12.jpg"},
];
List _items3 = [
  {"title": "Oversize sweatshirt", "url": "images/k4.PNG"},
  {"title": "Long shirt", "url": "images/k5.PNG"},
  {"title": "Nice shirt", "url": "images/k6.PNG"},
  {"title": "Beauty shirt", "url": "images/k7.PNG"},
];

// ********************************* The Beginning of The Class Find Your Style *********************************************
class FindYourStyle extends StatelessWidget {
  const FindYourStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Prov_button3>(// this class have index = 1,2,3
        builder: (context, prov, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Text(
            "Find your Style",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.5,
                color: isSwitched == false ? Colors.black : Colors.white),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Super Summer Sale",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  onPressed: () {
                    prov.method1();
                  },
                  color: prov.index == 1
                      ? const Color(0xFF699E96)
                      : Colors.white12.withOpacity(0.5),
                  child: Text(
                    "Trending Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: prov.index == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(5),
                  onPressed: () {
                    prov.method2();
                  },
                  color: prov.index == 2
                      ? const Color(0xFF699E96)
                      : Colors.white12.withOpacity(0.5),
                  child: Text(
                    "Top Rated",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: prov.index == 3 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          // ********************* GridView For 4 Photos *************************
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 15,
              childAspectRatio: 0.6,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      prov.index == 1
                          ? Navigator.pushNamed(context, "shop_men3")
                          : prov.index == 2
                              ? Navigator.pushNamed(context, "shop_women3")
                              : prov.index == 3
                                  ? Navigator.pushNamed(context, "shop_kids3")
                                  : Navigator.pushNamed(context, "routeName");
                    },
                    child: Image.asset(
                      prov.index == 1
                          ? _items1[i]["url"]
                          : prov.index == 2
                              ? _items2[i]['url']
                              : prov.index == 3
                                  ? _items3[i]['url']
                                  : _items1[i]["url"],
                      height: 200,
                      width: 170,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomFiveLoveIcon(), // The Main Five Icon made on top and i did it to make use it easy later
                  Text(
                    prov.index == 1
                        ? _items1[i]['title']
                        : prov.index == 2
                            ? _items2[i]['title']
                            : prov.index == 3
                                ? _items3[i]['title']
                                : "Mohamed Hashim",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color:
                            isSwitched == false ? Colors.black : Colors.white),
                  ),
                  const CustomCategoriesCost(), // This class contain this row 32.000$ 35.00$ 20%
                ],
              );
            },
          ),
        ],
      );
    });
  }
}
