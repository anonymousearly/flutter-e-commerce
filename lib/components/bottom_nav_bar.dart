import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.black,
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 36,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Browse',
          ),
          GButton(
            icon: Icons.shopping_cart_rounded,
            text: 'Cart',
          ),
          
          
        ],
      ),
    );
}
}