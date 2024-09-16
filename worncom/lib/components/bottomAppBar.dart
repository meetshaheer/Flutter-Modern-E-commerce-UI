import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/login/login.dart';

class bottomAppBar extends StatefulWidget {
  const bottomAppBar({super.key});

  @override
  State<bottomAppBar> createState() => _bottomAppBarState();
}

int _selectedIndex = 0;

class _bottomAppBarState extends State<bottomAppBar> {
  void selectedIndex(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
      onDestinationSelected: (value) => selectedIndex(value),
      selectedIndex: _selectedIndex,
      height: 80,
      elevation: 0,
      destinations: const [
        NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
        NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
        NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
        NavigationDestination(icon: Icon(Iconsax.user), label: "Account"),
      ],
    ));
  }
}
