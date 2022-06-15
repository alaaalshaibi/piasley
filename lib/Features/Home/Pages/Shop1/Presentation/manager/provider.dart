import 'package:flutter/material.dart';

import '../../../../../../core/widgets/items_.dart';

class Provcart extends ChangeNotifier {
  late List<Items> elements = [];
  late List<Items> whiteitems = [];
  int _price = 0;
  void addItem(Items item) {
    elements.add(item);
    _price += item.price;
    notifyListeners();
  }

  void removeItem(Items item) {
    elements.remove(item);
    _price -= item.price;
    notifyListeners();
  }

  int get totalprice {
    return _price;
  }

  List<Items> get NewList {
    // help me to use the value which added to my list _elements
    return elements;
  }

  // Favourite icon variable
  void AddToWhite(Items item) {
    whiteitems.add(item);
    _price += item.price;
    notifyListeners();
  }

  void RemoveFromWhite(Items item) {
    whiteitems.remove(item);
    _price -= item.price;
    notifyListeners();
  }

  List<Items> get whitelistitems {
    return whiteitems;
  }
}

class Prov_button extends ChangeNotifier {
  int index = 1;
  void method1() {
    index = 1;
    notifyListeners();
  }

  void method2() {
    index = 2;
    notifyListeners();
  }

  void method3() {
    index = 3;
    notifyListeners();
  }
}
