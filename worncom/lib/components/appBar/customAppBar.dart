import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: CColors.light),
          ),
          Text(
            "Shaheer Ahmed",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontFamily: "Poppins", color: CColors.light),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: CSizes.sm),
          child: IconButton(
            onPressed: () {},
            icon: const Badge(
              backgroundColor: CColors.dark,
              label: Text("2"),
              child: Icon(Iconsax.shopping_bag),
            ),
          ),
        )
      ],
    );
  }
}
