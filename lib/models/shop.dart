import 'package:flutter/material.dart';
import 'package:remshop/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 100,
      description: "Description 1",
    ),
    Product(
      name: "Product 2",
      price: 200,
      description: "Description 2",
    ),
    Product(
      name: "Product 3",
      price: 300,
      description: "Description 3",
    ),
    Product(
      name: "Product 4",
      price: 400,
      description: "Description 4",
    ),
    Product(
      name: "Product 5",
      price: 500,
      description: "Description 5",
    ),
  ];
  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;
  //add item to cart
  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  //remove this from cart
  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }
}