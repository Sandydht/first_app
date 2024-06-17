import 'package:first_app/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String? id;
  final String? title;
  final String? imageURL;
  final bool? isFavorite;

  ProductItem({
    super.key, 
    this.id,
    this.title,
    this.imageURL,
    this.isFavorite
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailPage.routeName,
              arguments: widget.id
            );
          },
          child: Image.network(
            widget.imageURL.toString(),
            fit: BoxFit.cover
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: widget.isFavorite == true ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
            onPressed: () {},
          ),
          title: Text(
            widget.title.toString(),
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 10,
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