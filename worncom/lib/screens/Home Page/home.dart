import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/bottomNavBar/bottomAppBar.dart';
import 'package:worncome/components/header/headerSearchBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/components/header/productCategories.dart';
import 'package:worncome/components/rounded_image.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/image_strings.dart';
import 'package:worncome/utils/constants/sizes.dart';

class homeView extends StatelessWidget {
  homeView({super.key});
  int currentindex = 0;

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
              child: Column(
                children: [
                  CarouselSlider(
                    items: const [
                      roundedImage(
                        imagepath: CImages.promoBanner1,
                      ),
                      roundedImage(
                        imagepath: CImages.promoBanner2,
                      ),
                      roundedImage(
                        imagepath: CImages.promoBanner3,
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
