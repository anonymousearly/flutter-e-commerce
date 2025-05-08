import 'package:ecommerce_mobile/models/characters.dart';
import 'package:flutter/material.dart';
class Cart extends ChangeNotifier {

  // list of characters available
  List<Character> characters = [
    Character(
      name: 'Uzumaki Naruto',
      description: 'Uzumaki Naruto is a character from the Naruto series.',
      imagePath: 'lib/images/naruto.png',
    ),
    Character(
      name: 'Sasuke Uchiha',
      description: 'Sasuke Uchiha is a character from the Naruto series.',
      imagePath: 'lib/images/sasuke.png',
    ),
    Character(
      name: 'Kakashi Hatake',
      description: 'Kakashi Hatake is a character from the Naruto series.',
      imagePath: 'lib/images/kakashi.png',
    ),
    Character(
      name: 'Sakura Haruno',
      description: 'Sakura Haruno is a character from the Naruto series.',
      imagePath: 'lib/images/sakura.png',
    ),
    
    
    
    
  ];
  // list of characters in the cart
  List<Character> userCart = [];

  //get list of characters in cart
  List<Character> getCharactersList() {
    return characters;
  }
  // get cart
  List<Character> getUserCart() {
    return userCart;
  }
  // add character to cart
  void addCharacterToCart(Character character) {
    userCart.add(character);
  }
  //remove character from cart
  void removeCharacterFromCart(Character character) {
    userCart.remove(character);
  }
  
  
}