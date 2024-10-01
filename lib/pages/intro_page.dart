// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_cart,
              size: 75,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 25),

            //title
            Text(
              "Pestana's Shop",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            //subtitle
            Text(
              "Always do better",
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            const SizedBox(height: 100),

            //button
            MyButton(
              onTap: () {},
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
