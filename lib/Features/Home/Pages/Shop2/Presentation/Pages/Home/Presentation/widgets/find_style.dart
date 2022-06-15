import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../../core/widgets/custom_categories_cost.dart';
import '../../../../../../../../../main.dart';
import '../../../../manager/provider_.dart';

Icon readyRedIcon = const Icon(
  Icons.favorite,
  color: Color(0xFF699E96),
  size: 22,
);
Icon readyWhiteIcon = Icon(
  Icons.favorite_outline_sharp,
  color: isSwitched == false ? Colors.black : Colors.white,
  size: 22,
);
var readyFiveIcon = Row(
  children: [
    readyRedIcon,
    readyRedIcon,
    readyRedIcon,
    readyRedIcon,
    readyWhiteIcon
  ],
);
List _items1 = [
  {"title": "Cropped flared jeans", "url": "images/23.png"},
  {"title": "Straight fit trousers", "url": "images/24.png"},
  {"title": "Velvet hoodie", "url": "images/22.png"},
  {"title": "Oversize cardigan", "url": "images/25.png"},
];
List _items2 = [
  {"title": "Oversize sweatshirt", "url": "images/10.png"},
  {"title": "Open blazer", "url": "images/2.png"},
  {"title": "Cropped flared jeans", "url": "images/6.png"},
  {"title": "Open blazer", "url": "images/11.png"},
];
List _items3 = [
  {"title": "Nice Piece", "url": "images/18.png"},
  {"title": "Rustic every day shirt", "url": "images/19.png"},
  {"title": "Long poplin shirt", "url": "images/15.png"},
  {"title": "Long poplin shirt", "url": "images/16.png"},
];

// ********************************* The Beginning of The Class Find Your Style *********************************************
class FindYourStyle extends StatelessWidget {
  const FindYourStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Prov_button2>(// this class have index = 1,2,3
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
                    "Top Picks",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: prov.index == 2 ? Colors.white : Colors.black,
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
                  padding: const EdgeInsets.all(10),
                  onPressed: () {
                    prov.method3();
                  },
                  color: prov.index == 3
                      ? const Color(0xFF699E96)
                      : Colors.white12.withOpacity(0.5),
                  minWidth: 10,
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
                          ? Navigator.pushNamed(context, "shop_men2")
                          : prov.index == 2
                              ? Navigator.pushNamed(context, "shop_women2")
                              : prov.index == 3
                                  ? Navigator.pushNamed(context, "shop_kids2")
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
                  readyFiveIcon, // The Main Five Icon made on top and i did it to make use it easy later
                  Text(
                    prov.index == 1
                        ? _items1[i]['title']
                        : prov.index == 2
                            ? _items2[i]['title']
                            : prov.index == 3
                                ? _items3[i]['title']
                                : "noor",
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
