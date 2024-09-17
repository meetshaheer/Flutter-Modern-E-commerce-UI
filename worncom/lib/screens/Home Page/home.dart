import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/headerSearchBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/components/header/productCategories.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          height: CSizes.spaceBtwSections,
                        ),

                        // Search Bar
                        const headerSearchBar(),
                        SizedBox(height: CSizes.spaceBtwSections),

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
          ],
        ),
      ),
    );
  }
}

List caticon = [];
