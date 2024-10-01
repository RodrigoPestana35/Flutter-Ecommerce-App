// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
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

          //cart tile

          //exit tile
        ],
      ),
    );
  }
}
