
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class productCard extends StatelessWidget {
  const productCard({
    super.key,
    required this.product,
  });

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 194,
              height: 194,
              color: CColors.light,
              child: Image(
                image: AssetImage(product.imaegurl),
              ),
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 5,
          child: Container(
            decoration: BoxDecoration(
              color: CColors.secondary.withOpacity(0.8),
              borderRadius: BorderRadius.circular(05),
            ),
            width: 40,
            height: 23,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: CSizes.sm, vertical: CSizes.xs),
              child: Text(
                product.discounPercentage + "%",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: CColors.black),
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              color: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.heart5,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
