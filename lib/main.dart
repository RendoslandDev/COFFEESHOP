import 'package:coffeepack/auth/lLoginOrRegisterPage.dart';
import 'package:coffeepack/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, index) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginOrRegisterPage(),
      ),
    );
  }
}
