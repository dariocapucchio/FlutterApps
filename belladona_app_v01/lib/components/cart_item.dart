import 'package:belladona_app_v01/modelos/cart.dart';
import 'package:belladona_app_v01/modelos/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Item item;
  CartItem({super.key, required this.item});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.item);
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.item.imagePath),
        title: Text(widget.item.name),
        subtitle: Text(widget.item.price),
        trailing: IconButton(
          onPressed: removeItemFromCart, 
          icon: Icon(Icons.delete)
        ),
      ),
    );
  }
  
}