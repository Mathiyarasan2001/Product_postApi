import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productpage/view/profile.dart';
import 'package:productpage/view/productpage.dart';

import 'cart.dart';

class Battomnavigation extends StatefulWidget {
  const Battomnavigation({super.key});

  @override
  State<Battomnavigation> createState() => _BattomnavigationState();
}

class _BattomnavigationState extends State<Battomnavigation> {
  int curentindex = 0;
  List pages = [ProductPage(),Cart(),ProfilePage(),];

  void onTabTapped(int index) {
    setState(() {
      curentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curentindex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: GoogleFonts.comfortaa(textStyle:TextStyle(fontSize: 12)),
        selectedLabelStyle:  GoogleFonts.comfortaa(textStyle:TextStyle(fontSize: 12)),
        currentIndex: curentindex,
        onTap: onTabTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey.shade200,
        iconSize: 32,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            backgroundColor: Colors.blueGrey,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            backgroundColor: Colors.blueGrey,
            label: 'Cart',
          ), BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            backgroundColor: Colors.blueGrey,
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}