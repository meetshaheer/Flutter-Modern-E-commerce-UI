import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/list2.dart';
import 'package:worncome/utils/constants/sizes.dart';

class productCategories extends StatelessWidget {
  const productCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: CSizes.defaultSpace),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryData.length,
          itemBuilder: (context, index) {
            var category = categoryData[index];
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
                    child: IconButton(
                        onPressed: () {}, icon: Image(width: CSizes.iconMd, image: AssetImage(category.iconurl))),
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems / 2,
                  ),
                  Text(
                    category.catName,
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
