import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/product_detail_page.dart';

import 'package:first_app/providers/cart.dart';
import 'package:first_app/providers/all_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => AllProducts()),
      ],
      child: MaterialApp(
        title: 'My Shop',
        home: HomePage(),
        routes: {
          ProductDetailPage.routeName: (context) => ProductDetailPage(),
          CartPage.routeName: (context) => CartPage(),
        }
      ),
    );
  }
}