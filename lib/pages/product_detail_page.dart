import 'package:first_app/providers/all_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = 'product-detail';

  ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final product = Provider.of<AllProducts>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          'Product Detail',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.network(
              product.imageURL.toString(),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '${product.title}',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Rp ${product.price},-',
            style: TextStyle(
              fontSize: 24
            ), 
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '${product.description}',
            style: TextStyle(
              fontSize: 24
            ), 
          )
        ],
      )
    );
  }
}