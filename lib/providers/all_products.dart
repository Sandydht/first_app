import 'dart:math';
import 'package:first_app/providers/product.dart';
import 'package:flutter/material.dart';

class AllProducts with ChangeNotifier {
  List<Product> _allProducts = List.generate(20, (index) => Product(
    id: 'id_${index + 1}',
    imageURL: 'https://picsum.photos/id/$index/200',
    title: 'Produk ke ${index + 1}',
    price: 10 + Random().nextInt(100),
    description: 'Ini adalah deskripsi produk ke ${index + 1}'
  ));

  List<Product> get allProducts {
    return [..._allProducts];
  }

  Product findById(id) {
    return _allProducts.firstWhere((data) => data.id.toString() == id.toString());
  }

  // void addProduct(value) {
  //   _allProducts.add(value);
  //   notifyListeners();
  // }
}
