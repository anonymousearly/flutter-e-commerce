import 'package:flutter/material.dart';
import '../components/characters_tile.dart';
import '../models/characters.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {

  //add character to cart
  void addCharacterToCart(Character character) {
    Provider.of<Cart>(context, listen: false).addCharacterToCart(character);

    //alert the user, character added to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Character Added to Cart'),
        content: Text('${character.name} has been added to your cart.'),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [              
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        
        //best characters
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
            Text(
              'Best Characters',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //get character
              Character character = value.getCharactersList()[index];

              //return character tile
              return CharacterTile(
                character: character,
                onTap: () => addCharacterToCart(character),
              );
            },
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Divider(
            color: Colors.orange[300],
            height: 12,
          ),
        ),
        
      ],
    
      ),
    );
  }
}
