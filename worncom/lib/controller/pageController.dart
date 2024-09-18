import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/Home%20Page/home.dart';
import 'package:worncome/screens/accounts%20page/account.dart';
import 'package:worncome/screens/store.dart';
import 'package:worncome/screens/wishlist.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/theme/theme.dart';

class pageController extends StatefulWidget {
  const pageController({super.key});

  @override
  State<pageController> createState() => _pageControllerState();
}
int _selectedIndex = 0;

class _pageControllerState extends State<pageController> {
  void selectedIndex(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
        final dark = CAppTheme.isDarkMode(context);

    return  Scaffold(
      bottomNavigationBar: NavigationBar(
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
    ),
    body: screens[_selectedIndex],
    );
  }
}

List screens = [homeView(), const storeView(), const wishlistView(), const accountSettign()];
