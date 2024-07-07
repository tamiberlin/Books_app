import 'dart:ffi';
import 'package:books_app/model/model.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class CartScreen extends StatefulWidget {
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeItemFromCart(Book book) {
    setState(() {
      cart.remove(book);
    });
  }

  void _clearCart() {
    setState(() {
      cart.clear();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: cart.isEmpty
          ? Center(
              child: Text("You havn't added anything to the cart"),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final book = cart[index];
                      return ListTile(
                        leading: Image.asset(book.imageURL),
                        title: Text(book.title),
                        subtitle: Text(book.author),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            _removeItemFromCart(book);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}