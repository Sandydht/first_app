import 'package:first_app/widgets/product_grid.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'My Shop',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ProductGrid()
    );
  }
}