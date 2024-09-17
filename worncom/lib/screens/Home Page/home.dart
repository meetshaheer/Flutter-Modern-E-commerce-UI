import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/bottomNavBar/bottomAppBar.dart';
import 'package:worncome/components/header/headerSearchBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/components/header/productCategories.dart';
import 'package:worncome/components/promoSLider.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class homeView extends StatelessWidget {
  homeView({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? CColors.dark : CColors.light,
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
                  // Product Categories
                  const productCategories()
                ],
              ),
            ),
            //
            // Promo Banner
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Column(
                children: [
                  const promoSlider(),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 310,
                            mainAxisSpacing: CSizes.gridViewSpacing * 2,
                            crossAxisSpacing: CSizes.gridViewSpacing),
                        itemCount: 4,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: CColors.white.withOpacity(0.5),
                              height: double.infinity,
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Container(
                                            color: CColors.light,
                                            child: const Image(
                                              image: AssetImage("assets/images/products/acer_laptop_1.png"),
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
                                            padding:
                                                const EdgeInsets.symmetric(horizontal: CSizes.sm, vertical: CSizes.xs),
                                            child: Text(
                                              "25%",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(color: CColors.black),
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: CSizes.defaultSpace / 2),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Green Nike Sport Shoe",
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
                                              "Nike",
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
                                              "PKR 1000",
                                              style: Theme.of(context).textTheme.headlineSmall,
                                            ),
                                            Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(20), topLeft: Radius.circular(10)),
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
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
