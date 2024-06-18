import 'package:first_app/providers/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_app/pages/cart_page.dart';

import 'package:first_app/widgets/product_grid.dart';
import 'package:first_app/widgets/custom_badge.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.blueAccent,
        title: Text(
          'My Shop',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          CustomBadge(
            value: cart.totalItems.toString(),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartPage.routeName);
              }, 
              icon: Icon(Icons.shopping_cart)
            )
          )
        ],
      ),
      body: ProductGrid()
    );
  }
}