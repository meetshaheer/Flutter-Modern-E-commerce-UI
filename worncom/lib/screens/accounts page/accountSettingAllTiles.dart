import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/accounts%20page/customAccountSettingTile.dart';

class accountSettingAllTiles extends StatelessWidget {
  const accountSettingAllTiles({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        accountSectionTile(
          dark: dark,
          title: "My Addressess",
          subtitle: "Set shoppingdelivery address",
          tileicon: Iconsax.home,
        ),
        accountSectionTile(
          dark: dark,
          title: "My Cart",
          subtitle: "Add or Remove Products, Land on Checkout",
          tileicon: Iconsax.shopping_cart,
        ),
        accountSectionTile(
          dark: dark,
          title: "My Orders",
          subtitle: "In-progress & completed orders",
          tileicon: Iconsax.bag_tick,
        ),
        accountSectionTile(
            dark: dark,
            title: "Bank Account",
            subtitle: "Widhdraw balance to registered accounts",
            tileicon: Iconsax.bank),
        accountSectionTile(
            dark: dark,
            title: "My Coupons",
            subtitle: "List of all discounted coupons",
            tileicon: Iconsax.discount_shape),
        accountSectionTile(
            dark: dark,
            title: "Notifications",
            subtitle: "In App recieved notifications",
            tileicon: Iconsax.notification),
        accountSectionTile(
            dark: dark,
            title: "Account Privacy",
            subtitle: "Manage data usage & accounts",
            tileicon: Iconsax.security_card),
      ],
    );
  }
}
