import 'package:flutter/material.dart';
import '../models/characters.dart';


class CharacterTile extends StatelessWidget {
  Character character;
  CharacterTile({super.key, required this.character});

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
          Text(
            textAlign: TextAlign.center,
            character.description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontStyle: FontStyle.italic,

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
          Container(
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
        ],
      ),
    );
  }
}
