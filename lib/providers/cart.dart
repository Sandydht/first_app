import 'package:first_app/models/cart_item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  int get totalItems => _items.length; 

  int get totalPrice {
    var result = 0;
    _items.forEach((key, cartItem) {
      result += cartItem.quantity!.toInt() * cartItem.price!.toInt();
    });
    return result;
    }

  void addCart(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      // Ketika sudah tersedia key product id
      _items.update(productId, (value) {
        return CartItem(
          id: value.id,
          title: value.title,
          price: value.price,
          quantity: value.quantity! + 1
        );
      });
    } else {
      // Nambah product id baru
      _items.putIfAbsent(productId, () => CartItem(
        id: DateTime.now().toString(), 
        title: title, 
        price: price, 
        quantity: 1
      ));
    }

    notifyListeners();
  }
}
