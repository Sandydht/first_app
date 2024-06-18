import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_app/pages/product_detail_page.dart';

import 'package:first_app/providers/cart.dart';
import 'package:first_app/providers/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);

    return ClipRect(
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: product.isFavorite == true ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
            onPressed: () {
              product.toggleStatusFavorit();
            },
          ),
          title: Text(
            '${product.title}',
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
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
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailPage.routeName,
              arguments: product.id
            );
          },
          child: Image.network(
            '${product.imageURL}',
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}