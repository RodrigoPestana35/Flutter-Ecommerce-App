import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    //products
    Product(
      name: "Product 1",
      price: 100.0,
      description:
          "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    ),
    Product(
      name: "Product 2",
      price: 200.0,
      description:
          "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    ),
    Product(
      name: "Product 3",
      price: 300.0,
      description:
          "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    ),
    Product(
      name: "Product 4",
      price: 400.0,
      description:
          "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    ),
  ];

  //user's cart
  List<Product> cart = [];

  //get products for sale
  List<Product> get shop => _shop;

  //get user's cart
  List<Product> get userCart => cart;

  //add product to cart
  void addToCart(Product product) {
    cart.add(product);
    notifyListeners();
  }

  //remove product from cart\
  void removeFromCart(Product product) {
    cart.remove(product);
    notifyListeners();
  }
}
