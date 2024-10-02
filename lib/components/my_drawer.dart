// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:ecommerceapp/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    size: 75,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              //shop tile
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  //close drawer
                  Navigator.pop(context);
                },
              ),

              //cart tile
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  //close drawer
                  Navigator.pop(context);

                  //navigate to cart page
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),
            ],
          ),

          //exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              text: "Exit",
              icon: Icons.exit_to_app,
              onTap: () {
                //close drawer
                Navigator.pop(context);

                //exit app
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
