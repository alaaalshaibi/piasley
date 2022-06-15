import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import '../../widgets/shop_body.dart';
import '../Shop Now3/men.dart';
import '../Shop Now3/kids.dart';
import '../Shop Now3/women.dart';

class Category {
  final String name, url;
  final num price;
  Category(this.name, this.url, this.price);
}

class SearchBody3 extends StatelessWidget {
  static List<Category> categories = [
    Category('${categoriesKids3[0]['description']}',
        '${categoriesKids3[0]['url']}', 1000),
    Category('${categoriesKids3[1]['description']}',
        '${categoriesKids3[1]['url']}', 2000),
    Category('${categoriesKids3[2]['description']}',
        '${categoriesKids3[2]['url']}', 3000),
    Category('${categoriesKids3[3]['description']}',
        '${categoriesKids3[3]['url']}', 5000),
    Category('${categoriesKids3[4]['description']}',
        '${categoriesKids3[4]['url']}', 5000),
    Category('${categoriesKids3[5]['description']}',
        '${categoriesKids3[5]['url']}', 5000),
    Category('${categoriesKids3[6]['description']}',
        '${categoriesKids3[6]['url']}', 5000),
    Category('${categoriesKids3[7]['description']}',
        '${categoriesKids3[7]['url']}', 5000),
    Category('${categoriesKids3[8]['description']}',
        '${categoriesKids3[8]['url']}', 5000),
    Category('${categoriesKids3[9]['description']}',
        '${categoriesKids3[9]['url']}', 5000),
    Category('${categoriesMen3[0]['description']}',
        '${categoriesMen3[0]['url']}', 4150),
    Category('${categoriesMen3[1]['description']}',
        '${categoriesMen3[1]['url']}', 2457),
    Category('${categoriesMen3[2]['description']}',
        '${categoriesMen3[2]['url']}', 6587),
    Category('${categoriesMen3[3]['description']}',
        '${categoriesMen3[3]['url']}', 4587),
    Category('${categoriesMen3[4]['description']}',
        '${categoriesMen3[4]['url']}', 4587),
    Category('${categoriesMen3[5]['description']}',
        '${categoriesMen3[5]['url']}', 4587),
    Category('${categoriesMen3[6]['description']}',
        '${categoriesMen3[6]['url']}', 4587),
    Category('${categoriesMen3[7]['description']}',
        '${categoriesMen3[7]['url']}', 4587),
    Category('${categoriesMen3[8]['description']}',
        '${categoriesMen3[8]['url']}', 4587),
    Category('${categoriesMen3[9]['description']}',
        '${categoriesMen3[9]['url']}', 4587),
    Category('${categoriesWomen3[0]['description']}',
        '${categoriesWomen3[0]['url']}', 1414),
    Category('${categoriesWomen3[1]['description']}',
        '${categoriesWomen3[1]['url']}', 1257),
    Category('${categoriesWomen3[2]['description']}',
        '${categoriesWomen3[2]['url']}', 1141),
    Category('${categoriesWomen3[3]['description']}',
        '${categoriesWomen3[3]['url']}', 4522),
    Category('${categoriesWomen3[4]['description']}',
        '${categoriesWomen3[4]['url']}', 1455),
    Category('${categoriesWomen3[5]['description']}',
        '${categoriesWomen3[5]['url']}', 3658),
    Category('${categoriesWomen3[6]['description']}',
        '${categoriesWomen3[6]['url']}', 4455),
    Category('${categoriesWomen3[7]['description']}',
        '${categoriesWomen3[7]['url']}', 4455),
    Category('${categoriesWomen3[8]['description']}',
        '${categoriesWomen3[8]['url']}', 4455),
    Category('${categoriesWomen3[9]['description']}',
        '${categoriesWomen3[9]['url']}', 4455),
  ];

  const SearchBody3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Shop3body(),
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
                          category.name == categoriesKids3[0]['description']
                              ? 'shop_kids3'
                              : category.name ==
                                      categoriesKids3[1]['description']
                                  ? 'shop_kids3'
                                  : category.name ==
                                          categoriesKids3[2]['description']
                                      ? 'shop_kids3'
                                      : category.name ==
                                              categoriesKids3[3]['description']
                                          ? 'shop_kids3'
                                          : category.name ==
                                                  categoriesKids3[4]
                                                      ['description']
                                              ? 'shop_kids3'
                                              : category.name ==
                                                      categoriesKids3[5]
                                                          ['description']
                                                  ? 'shop_kids3'
                                                  : category.name ==
                                                          categoriesKids3[6]
                                                              ['description']
                                                      ? 'shop_kids3'
                                                      : category.name ==
                                                              categoriesKids3[7]
                                                                  [
                                                                  'description']
                                                          ? 'shop_kids3'
                                                          : category.name ==
                                                                  categoriesKids3[
                                                                          8][
                                                                      'description']
                                                              ? 'shop_kids3'
                                                              : category.name ==
                                                                      categoriesKids3[
                                                                              9]
                                                                          [
                                                                          'description']
                                                                  ? 'shop_kids3'
                                                                  : category.name ==
                                                                          categoriesMen3[0]
                                                                              [
                                                                              'description']
                                                                      ? 'shop_men3'
                                                                      : category.name ==
                                                                              categoriesMen3[1]['description']
                                                                          ? 'shop_men3'
                                                                          : category.name == categoriesMen3[2]['description']
                                                                              ? 'shop_men3'
                                                                              : category.name == categoriesMen3[3]['description']
                                                                                  ? 'shop_men3'
                                                                                  : category.name == categoriesMen3[4]['description']
                                                                                      ? 'shop_men3'
                                                                                      : category.name == categoriesMen3[5]['description']
                                                                                          ? 'shop_men3'
                                                                                          : category.name == categoriesMen3[6]['description']
                                                                                              ? 'shop_men3'
                                                                                              : category.name == categoriesMen3[7]['description']
                                                                                                  ? 'shop_men3'
                                                                                                  : category.name == categoriesMen3[8]['description']
                                                                                                      ? 'shop_men3'
                                                                                                      : category.name == categoriesMen3[9]['description']
                                                                                                          ? 'shop_men3'
                                                                                                          : "shop_women3");
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
                      subtitle: Text('${category.price} joo'),
                    ),
                  )),
        ),
        child: const Icon(Icons.search),
      ),
    );
  }
}
