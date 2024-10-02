import 'package:ecommerceapp/components/my_button.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove product from cart
  void removeFromCart(BuildContext context, Product product) {
    //show a dialog box to ask the user if they want to remove the product from the cart
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Do you want to remove this product from the cart?"),
          actions: [
            //yes button
            MaterialButton(
              onPressed: () {
                //remove product from cart
                context.read<Shop>().removeFromCart(product);
                Navigator.pop(context);
              },
              child: Text("Yes"),
            ),
            //cancel button
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  //pay button pressed
  void payButtonPressed(BuildContext context) {
    //show a dialog box to ask the user if they want to pay
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text("Backend payment here"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //get user's cart
    final cart = context.watch<Shop>().userCart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          //cart list
          Expanded(
            child: cart.isEmpty
                ? const Center(child: Text("Cart is empty..."))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      //get each product
                      final product = cart[index];

                      //return a ProductTile
                      return ListTile(
                        title: Text(product.name),
                        subtitle: Text(product.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => removeFromCart(context, product),
                        ),
                      );
                    }),
          ),
          //total price

          //pay button
          cart.isEmpty
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: MyButton(
                    onTap: () => payButtonPressed(context),
                    child: Text("Pay now!"),
                  ),
                ),
        ],
      ),
    );
  }
}
