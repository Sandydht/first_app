import 'package:flutter/material.dart';

class Product {
  @required String? imageUrl;
  @required String? title;
  @required int? price;
  @required String? description;

  Product(this.imageUrl, this.title, this.price, this.description);
}
