import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/components/bottom_nav_bar.dart';
import 'package:ecommerce_mobile/pages/browse_page.dart';
import 'package:ecommerce_mobile/pages/cart_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // control of the bottom nav bar
  int _selectedIndex = 0;

  //update our selected index
  //user taps on a bottom nav bar item
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    const BrowsePage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      bottomNavigationBar:  MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
          },
        ),        
      ),
    ),
    drawer: Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
          DrawerHeader(
            child: Image.asset(
            'lib/images/hidden-leaf-logo.png',
            color: Colors.black,
          )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.black,
            ),
          ),

          //other pages
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ],
          ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
      ),
    ),
    body: _pages[_selectedIndex],
    );
  }
}