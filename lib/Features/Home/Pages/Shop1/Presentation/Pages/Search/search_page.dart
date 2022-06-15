import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import '../Shop Now/men_shop.dart';
import '../Shop%20Now/women.dart';
import '../../widgets/Shop1_body.dart';
import '../Shop Now/kids.dart';

class Category {
  final String name, url;
  final num price;
  Category(this.name, this.url, this.price);
}

class SearchBody1 extends StatelessWidget {
  static List<Category> categories = [
    Category('${categoriesKids[0]['description']}',
        '${categoriesKids[0]['url']}', 1000),
    Category('${categoriesKids[1]['description']}',
        '${categoriesKids[1]['url']}', 2000),
    Category('${categoriesKids[2]['description']}',
        '${categoriesKids[2]['url']}', 3000),
    Category('${categoriesKids[3]['description']}',
        '${categoriesKids[3]['url']}', 5000),
    Category('${categoriesMen[0]['description']}', '${categoriesMen[0]['url']}',
        4150),
    Category('${categoriesMen[1]['description']}', '${categoriesMen[1]['url']}',
        2457),
    Category('${categoriesMen[2]['description']}', '${categoriesMen[2]['url']}',
        6587),
    Category('${categoriesMen[3]['description']}', '${categoriesMen[3]['url']}',
        4587),
    Category('${categoriesWomen[0]['description']}',
        '${categoriesWomen[0]['url']}', 1414),
    Category('${categoriesWomen[1]['description']}',
        '${categoriesWomen[1]['url']}', 1257),
    Category('${categoriesWomen[2]['description']}',
        '${categoriesWomen[2]['url']}', 1141),
    Category('${categoriesWomen[3]['description']}',
        '${categoriesWomen[3]['url']}', 4522),
    Category('${categoriesWomen[4]['description']}',
        '${categoriesWomen[4]['url']}', 1455),
    Category('${categoriesWomen[5]['description']}',
        '${categoriesWomen[5]['url']}', 3658),
    Category('${categoriesWomen[6]['description']}',
        '${categoriesWomen[6]['url']}', 4455),
  ];

  const SearchBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Shop1_body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF699E96),
        tooltip: 'Search Category',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Category>(
              onQueryUpdate: (s) => (s),
              items: categories,
              searchLabel: 'Search Category',
              suggestion: const Center(
                child: Text('Filter Categories by name or price or url'),
              ),
              failure: const Center(
                child: Text('No Category found :('),
              ),
              filter: (category) => [
                    category.name,
                    category.url,
                    category.price.toString(),
                  ],
              builder: (category) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context,
                          category.name == categoriesKids[0]['description']
                              ? 'shop_kids1'
                              : category.name ==
                                      categoriesKids[1]['description']
                                  ? 'shop_kids1'
                                  : category.name ==
                                          categoriesKids[2]['description']
                                      ? 'shop_kids1'
                                      : category.name ==
                                              categoriesKids[3]['description']
                                          ? 'shop_kids1'
                                          : category.name ==
                                                  categoriesMen[0]
                                                      ['description']
                                              ? 'shop_men1'
                                              : category.name ==
                                                      categoriesMen[1]
                                                          ['description']
                                                  ? 'shop_men1'
                                                  : category.name ==
                                                          categoriesMen[2]
                                                              ['description']
                                                      ? 'shop_men1'
                                                      : category.name ==
                                                              categoriesMen[3][
                                                                  'description']
                                                          ? 'shop_men1'
                                                          : "shop_women1");
                    },
                    child: ListTile(
                      leading: Image.asset(
                        category.url,
                        width: 60,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        category.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('${category.price} jod'),
                    ),
                  )),
        ),
        child: const Icon(Icons.search),
      ),
    );
  }
}
