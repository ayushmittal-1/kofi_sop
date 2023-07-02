import 'package:flutter/material.dart';

import 'coffee_object.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
   final List<Coffee> _shop = [
    Coffee(name: 'Black Coffee', price: "₹120", imagepath: "images/black.png"),
    Coffee(name: 'Latte', price: "₹150", imagepath: "images/latte.png"),
    Coffee(name: 'Espresso', price: "₹100", imagepath: "images/espresso.png"),
    Coffee(name: 'Cold Coffee', price: "₹130", imagepath: "images/cold-coffee.png"),


  ];

  // user cart
  List<Coffee> _userCart = [];


  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add items to cart function
  void addToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
    
  }

  //remove item from cart function
void removeFromCart(Coffee coffee){
_userCart.remove(coffee);
}
}
