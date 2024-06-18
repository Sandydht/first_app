import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_app/pages/cart_page.dart';

import 'package:first_app/providers/all_products.dart';
import 'package:first_app/providers/cart.dart';
import 'package:first_app/widgets/custom_badge.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = 'product-detail';

  ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final product = Provider.of<AllProducts>(context).findById(productId);
    final cart = Provider.of<Cart>(context);

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
        actions: [
          CustomBadge(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartPage.routeName);
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
            ), 
            value: cart.totalItems.toString()
          )
        ],
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
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Add to cart'),
                  duration: Duration(seconds: 3),
                )
              );
              
              cart.addCart(
                product.id.toString(), 
                product.title.toString(), 
                product.price!.toDouble()
              );
            }, 
            child: Text('Add to cart')
          )
        ],
      )
    );
  }
}