import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_app/providers/products.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/product_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        home: HomePage(),
        routes: {
          ProductDetailPage.routeName: (context) => ProductDetailPage()
        }
      ),
    );
  }
}