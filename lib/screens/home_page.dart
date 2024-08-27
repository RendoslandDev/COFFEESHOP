// ignore_for_file: unused_field

import 'package:coffeepack/models/bottom_bar.dart';
import 'package:coffeepack/screens/cart_page.dart';
import 'package:coffeepack/screens/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "C O F F E E",
          style: GoogleFonts.abel(color: Colors.brown, fontSize: 25),
        ),
        actions: const [],
      ),
      // ignore: prefer_const_constructors
      body:
          // const ProContainerStack(),
          _pages[_selectedIndex],
    );
  }
}
