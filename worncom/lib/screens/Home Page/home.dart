import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/bottomNavBar/bottomAppBar.dart';
import 'package:worncome/components/header/headerSearchBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/components/header/productCategories.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/image_strings.dart';
import 'package:worncome/utils/constants/sizes.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerPositionedBlock(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: CSizes.defaultSpace, left: CSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // App Bar
                        const PreferredSize(
                          preferredSize: Size.fromHeight(60),
                          child: CustomAppBar(),
                        ),
                        const SizedBox(
                          height: CSizes.spaceBtwSections / 2,
                        ),

                        // Search Bar
                        const headerSearchBar(),
                        const SizedBox(height: CSizes.spaceBtwSections / 1.4),

                        // Categories Section
                        Text(
                          "Popular Categories",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontFamily: "Poppins", color: CColors.light),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  const productCategories()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(CSizes.md),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(CSizes.md),
                    child: const Image(image: AssetImage(CImages.promoBanner3))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List caticon = [];
