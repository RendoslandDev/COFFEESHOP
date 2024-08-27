import 'package:coffeepack/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
        name: 'Espresso',
        price: "2.0",
        imagePath: "assets/images/separate.jpg"),
    Coffee(
        name: 'Cappuccino',
        price: "3.0",
        imagePath: "assets/images/sexual.jpg"),
    Coffee(
      name: 'Latte',
      price: "3.5",
      imagePath: "assets/images/sexual.jpg",
    ),
  ];

//user cart
  List<Coffee> userCart = [];

//get coffee
  List<Coffee> get coffeeShop => _shop;

//get user cart
  List<Coffee> get getUserCart => userCart;

//additemto cart
  void addItemToCart(Coffee coffee) {
    userCart.add(coffee);
    notifyListeners();
  }

  void removeItemCart(Coffee coffee) {
    userCart.remove(coffee);
    notifyListeners();
  }
}
