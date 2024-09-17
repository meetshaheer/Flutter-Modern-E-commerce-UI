import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/theme/theme.dart';

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
    final dark = CAppTheme.isDarkMode(context);

    return NavigationBar(
      backgroundColor: dark ? CColors.black : CColors.white,
      indicatorColor: dark ? CColors.white.withOpacity(0.1) : CColors.black.withOpacity(0.1),
      onDestinationSelected: (value) => selectedIndex(value),
      selectedIndex: _selectedIndex,
      height: 80,
      elevation: 0,
      destinations: const [
        NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
        NavigationDestination(
          icon: Icon(Iconsax.shop),
          label: "Store",
        ),
        NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
        NavigationDestination(icon: Icon(Iconsax.user), label: "Account"),
      ],
    );
  }
}
