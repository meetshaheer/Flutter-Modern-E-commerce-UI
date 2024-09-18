
import 'package:flutter/material.dart';
import 'package:worncome/screens/Home%20Page/components/productInnerDescription.dart';
import 'package:worncome/screens/Home%20Page/components/productUpperCard.dart';
import 'package:worncome/utils/constants/sizes.dart';

class verticalProductCard extends StatelessWidget {
  const verticalProductCard({
    super.key,
    required this.product,
  });

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        // Product Card like image, discount, and icon
        productCard(product: product),
        Padding(
          padding: const EdgeInsets.only(left: CSizes.defaultSpace / 2),
          //
          // Product description lie title, brand, price, cart
          child: productDescription(product: product),
        ),
      ],
    );
  }
}