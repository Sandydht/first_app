import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  @required String? id;
  @required String? imageURL;
  @required String? title;
  @required int? price;
  @required String? description;
  bool? isFavorite;

  Product({
    this.id, 
    this.imageURL, 
    this.title, 
    this.price, 
    this.description, 
    this.isFavorite = false
  });

  void toggleStatusFavorit() {
    isFavorite = !isFavorite!;
    notifyListeners();
  }
}