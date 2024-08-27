import 'package:coffeepack/models/coffe_tile.dart';
import 'package:coffeepack/models/coffee.dart';
import 'package:coffeepack/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "HOW WOULD YOU LIKE YOUR COFFE!",
                style: GoogleFonts.abel(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 25),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.coffeeShop.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.coffeeShop[index];

                        return CoffeTile(
                          coffee: eachCoffee,
                          icon: const Icon(Icons.add),
                          onPressed: () => addToCart(eachCoffee),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
