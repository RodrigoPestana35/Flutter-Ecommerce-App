// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Image
          Icon(Icons.favorite),

          // Name
          Text(product.name),

          // Description
          Text(product.description),

          // Price
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
