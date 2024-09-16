import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class productCategories extends StatelessWidget {
  const productCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: CSizes.defaultSpace),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: CSizes.spaceBtwItems),
              child: Column(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: CColors.light,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Iconsax.shield_cross)),
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems / 2,
                  ),
                  Text(
                    "Shoes",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: CColors.light,
                        ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
