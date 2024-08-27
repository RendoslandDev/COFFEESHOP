import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
      color: Colors.grey,
      tabBorderRadius: 26,
      tabMargin: const EdgeInsets.all(10),
      activeColor: Colors.white,
      tabActiveBorder: Border.all(color: Colors.brown),
      style: GnavStyle.oldSchool,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      tabs: const [
        GButton(icon: Icons.home_max, text: 'S H O P'),
        GButton(icon: Icons.local_fire_department, text: 'C A R T'),
      ],
    );
  }
}
