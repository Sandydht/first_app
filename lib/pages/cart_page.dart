import 'package:first_app/providers/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  static const routeName = 'cart';

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final cartList = cart.items.values.toList();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.blueAccent,
        title: Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: cart.totalItems,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                '${cartList[index].title}'
              ),
              subtitle: Text('Quantity: ${cartList[index].quantity}'),
              trailing: Container(
                child: Text('\$ ${cartList[index].quantity! * cartList[index].price!}'),
              ),
            );
          }
        ),
      ),
    );
  }
}