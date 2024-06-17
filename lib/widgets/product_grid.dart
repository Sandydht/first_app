
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_app/providers/all_products.dart';
import 'package:first_app/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<AllProducts>(context);
    final allProducts = productData.allProducts;

    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: allProducts[index],
        child: ProductItem(),
      ),
      itemCount: allProducts.length,
    );
  }
}