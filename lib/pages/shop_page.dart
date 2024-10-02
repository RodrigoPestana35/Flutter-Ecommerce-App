import 'package:ecommerceapp/components/my_drawer.dart';
import 'package:ecommerceapp/components/my_product_tile.dart';
import 'package:ecommerceapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //acess products
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          //get each product
          final product = products[index];

          //return a ProductTile
          return MyProductTile(product: product);
        },
      ),
    );
  }
}
