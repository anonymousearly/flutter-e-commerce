import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';
import '../components/cart_item.dart';
import '../models/characters.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Own Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          const SizedBox(height: 16),

          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {

                Character individualCharacter = value.getUserCart()[index];

                return CartItem(character: individualCharacter);
              },
            ),
          ),
            
          ],
        ),
      ),
    );
  }
}