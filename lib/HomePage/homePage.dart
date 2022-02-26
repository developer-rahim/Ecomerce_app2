import 'package:firebase_connect_check/HomePage/bottomnavbar1.dart';
import 'package:firebase_connect_check/HomePage/bottomnavbar2.dart';
import 'package:firebase_connect_check/HomePage/bottomnavbar3.dart';
import 'package:firebase_connect_check/HomePage/bottomnavbar4.dart';
import 'package:firebase_connect_check/ReviewCart/cartReview.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    BottomNavBar1(),
    BottomNavBar2(),
    BottomNavBar3(),
    BottomNavBar4(),
    CartReview(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Card Review',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.white24,
        onTap: _onItemTapped,
        // backgroundColor: Colors.purpleAccent,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
