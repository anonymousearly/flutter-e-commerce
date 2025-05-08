import 'package:flutter/material.dart';
import '../models/characters.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';


class CartItem extends StatefulWidget {
  Character character;
  CartItem({
  super.key, 
  required this.character});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  // remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeCharacterFromCart(widget.character);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(12),
      ),
      
    
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.character.imagePath),
        title: Text(widget.character.name),
        subtitle: Text(widget.character.description),
        trailing: IconButton(
          icon: const Icon(Icons.delete), 
          onPressed: removeItemFromCart,
          ),
        ),
    );
  }

}
