
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_app/providers/products.dart';
import 'package:first_app/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allProducts = productData.allProducts;

    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
      itemBuilder: (context, index) => ProductItem(
        id: '${allProducts[index].id}',
        title: '${allProducts[index].title}',
        imageURL: '${allProducts[index].imageURL}'
      ),
      itemCount: allProducts.length,
    );
  }
}