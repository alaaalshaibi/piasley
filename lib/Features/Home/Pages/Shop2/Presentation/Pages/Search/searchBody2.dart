import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

import '../../widgets/Shop2_body.dart';
import '../Shop Now2/men.dart';
import '../Shop Now2/kids.dart';
import '../Shop Now2/women.dart';

class Category {
  final String name, url;
  final num price;
  Category(this.name, this.url, this.price);
}

class SearchBody2 extends StatelessWidget {
  static List<Category> categories = [
    Category('${categoriesKids2[0]['description']}',
        '${categoriesKids2[0]['url']}', 1000),
    Category('${categoriesKids2[1]['description']}',
        '${categoriesKids2[1]['url']}', 2000),
    Category('${categoriesKids2[2]['description']}',
        '${categoriesKids2[2]['url']}', 3000),
    Category('${categoriesKids2[3]['description']}',
        '${categoriesKids2[3]['url']}', 5000),
    Category('${categoriesKids2[4]['description']}',
        '${categoriesKids2[4]['url']}', 5000),
    Category('${categoriesKids2[5]['description']}',
        '${categoriesKids2[5]['url']}', 5000),
    Category('${categoriesKids2[6]['description']}',
        '${categoriesKids2[6]['url']}', 5000),
    Category('${categoriesKids2[7]['description']}',
        '${categoriesKids2[7]['url']}', 5000),
    Category('${categoriesKids2[8]['description']}',
        '${categoriesKids2[8]['url']}', 5000),
    Category('${categoriesKids2[9]['description']}',
        '${categoriesKids2[9]['url']}', 5000),
    Category('${categoriesMen2[0]['description']}',
        '${categoriesMen2[0]['url']}', 4150),
    Category('${categoriesMen2[1]['description']}',
        '${categoriesMen2[1]['url']}', 2457),
    Category('${categoriesMen2[2]['description']}',
        '${categoriesMen2[2]['url']}', 6587),
    Category('${categoriesMen2[3]['description']}',
        '${categoriesMen2[3]['url']}', 4587),
    Category('${categoriesMen2[4]['description']}',
        '${categoriesMen2[4]['url']}', 4587),
    Category('${categoriesMen2[5]['description']}',
        '${categoriesMen2[5]['url']}', 4587),
    Category('${categoriesMen2[6]['description']}',
        '${categoriesMen2[6]['url']}', 4587),
    Category('${categoriesWomen2[0]['description']}',
        '${categoriesWomen2[0]['url']}', 1414),
    Category('${categoriesWomen2[1]['description']}',
        '${categoriesWomen2[1]['url']}', 1257),
    Category('${categoriesWomen2[2]['description']}',
        '${categoriesWomen2[2]['url']}', 1141),
    Category('${categoriesWomen2[3]['description']}',
        '${categoriesWomen2[3]['url']}', 4522),
    Category('${categoriesWomen2[4]['description']}',
        '${categoriesWomen2[4]['url']}', 1455),
    Category('${categoriesWomen2[5]['description']}',
        '${categoriesWomen2[5]['url']}', 3658),
    Category('${categoriesWomen2[6]['description']}',
        '${categoriesWomen2[6]['url']}', 4455),
    Category('${categoriesWomen2[7]['description']}',
        '${categoriesWomen2[7]['url']}', 4455),
    Category('${categoriesWomen2[8]['description']}',
        '${categoriesWomen2[8]['url']}', 4455),
    Category('${categoriesWomen2[9]['description']}',
        '${categoriesWomen2[9]['url']}', 4455),
  ];

  const SearchBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shop2body(),
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
                          category.name == categoriesKids2[0]['description']
                              ? 'shop_kids2'
                              : category.name ==
                                      categoriesKids2[1]['description']
                                  ? 'shop_kids2'
                                  : category.name ==
                                          categoriesKids2[2]['description']
                                      ? 'shop_kids2'
                                      : category.name ==
                                              categoriesKids2[3]['description']
                                          ? 'shop_kids2'
                                          : category.name ==
                                                  categoriesKids2[4]
                                                      ['description']
                                              ? 'shop_kids2'
                                              : category.name ==
                                                      categoriesKids2[5]
                                                          ['description']
                                                  ? 'shop_kids2'
                                                  : category.name ==
                                                          categoriesKids2[6]
                                                              ['description']
                                                      ? 'shop_kids2'
                                                      : category.name ==
                                                              categoriesKids2[7]
                                                                  [
                                                                  'description']
                                                          ? 'shop_kids2'
                                                          : category.name ==
                                                                  categoriesKids2[
                                                                          8][
                                                                      'description']
                                                              ? 'shop_kids2'
                                                              : category.name ==
                                                                      categoriesMen2[
                                                                              0]
                                                                          [
                                                                          'description']
                                                                  ? 'shop_men2'
                                                                  : category.name ==
                                                                          categoriesMen2[1]
                                                                              [
                                                                              'description']
                                                                      ? 'shop_men2'
                                                                      : category.name ==
                                                                              categoriesMen2[2]['description']
                                                                          ? 'shop_men2'
                                                                          : category.name == categoriesMen2[3]['description']
                                                                              ? 'shop_men2'
                                                                              : category.name == categoriesMen2[4]['description']
                                                                                  ? 'shop_men2'
                                                                                  : category.name == categoriesMen2[5]['description']
                                                                                      ? 'shop_men2'
                                                                                      : category.name == categoriesMen2[6]['description']
                                                                                          ? 'shop_men2'
                                                                                          : "shop_women2");
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
