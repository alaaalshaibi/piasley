import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../../core/widgets/custom_categories_cost.dart';
import '../../../../../../../../../main.dart';
import '../../../../manager/provider_.dart';
import '../../../../../../../../../core/widgets/items_.dart';

class DealsofDay extends StatefulWidget {
  const DealsofDay({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DealsofDayState();
  }
}

class DealsofDayState extends State<DealsofDay> {
  final List<Items> _content = [
    // _content is an object from Items class
    Items(
        url: "images/k33.PNG",
        title: "Oversize cardigan",
        subtitle: "by Mango",
        price: 2000),
    Items(
        url: "images/k12.jpg",
        title: "long popline shirt ",
        subtitle: "by Zara",
        price: 1500),
    Items(
        url: "images/k4.PNG",
        title: "Open blazer",
        subtitle: "by Yamo",
        price: 3000),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deals of the Day",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: isSwitched == false ? Colors.black : Colors.white),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("Shop_Now");
              },
              child: const Text(
                "Show All",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color(0xFF699E96)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        // Container Which include 3 ListTile
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _content.length,
            itemBuilder: (context, i) {
              return Container(
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: 0.5,
                                child: MaterialButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "shop_men1");
                                    },
                                    child: Image.asset(
                                      _content[i].url,
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(0),
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _content[i].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: isSwitched == false
                                        ? Colors.black
                                        : Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                _content[i].subtitle,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 15),
                              ),
                              const SizedBox(height: 4),
                              const CustomCategoriesCost(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Consumer<Provcart3>(builder: (context, prov, child) {
                      return SizedBox(
                        width: 50,
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15,
                              top: 10,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: isSwitched == false
                                    ? Colors.white
                                    : Colors.white10,
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.favorite,
                                    color: isSwitched == false
                                        ? Colors.black38
                                        : Colors.white,
                                  ),
                                  onTap: () {
                                    prov.addItem(_content[i]);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
