import 'package:flutter/material.dart';
import '../models/characters.dart';


class CharacterTile extends StatelessWidget {
  Character character;
  void Function()? onTap;
  CharacterTile({super.key, required this.character, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: 240,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),


      child: Column(
        children: [
          //character images
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              
              character.imagePath,
            ),
          ),

          const SizedBox(height: 12),
          //character description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              character.description,
              style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
                fontStyle: FontStyle.italic,

            ),
          ),
          ),

          const SizedBox(height: 28),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                children: [
                  //character name
                  Text(
                    textAlign: TextAlign.center,
                    character.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
          

          //plus button
          GestureDetector(
            onTap: onTap,
              //add character to cart
              
            
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
