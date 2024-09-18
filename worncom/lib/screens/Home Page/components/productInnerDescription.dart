import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class productDescription extends StatelessWidget {
  const productDescription({
    super.key,
    required this.product,
  });

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            product.productTitle,
            style: Theme.of(context).textTheme.labelLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Text(
              product.brand,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              width: CSizes.xs,
            ),
            const Icon(
              Iconsax.verify5,
              color: CColors.primary,
              size: CSizes.iconXs,
            )
          ],
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "PKR ${product.price}",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(10)),
                color: CColors.dark,
              ),
              child: const SizedBox(
                width: CSizes.iconLg * 2,
                height: CSizes.iconMd * 1.5,
                child: Icon(
                  Iconsax.add,
                  color: Colors.white,
                  size: CSizes.iconMd,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
