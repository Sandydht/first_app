import 'package:first_app/pages/product_detail_page.dart';
import 'package:first_app/providers/product.dart';
// import 'package:first_app/providers/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);

    return ClipRect(
      child: GridTile(
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
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product> (
            builder: (context, productData, child) => IconButton(
              icon: productData.isFavorite == true ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
              onPressed: () {
                productData.toggleStatusFavorit();
              },
            ),
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
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}