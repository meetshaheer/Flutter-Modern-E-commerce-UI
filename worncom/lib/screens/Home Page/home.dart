import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/headerSearchBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/components/header/productCategories.dart';
import 'package:worncome/screens/Home%20Page/components/promoSLider.dart';
import 'package:worncome/screens/Home%20Page/components/verticlaProductCard.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/lists.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class homeView extends StatelessWidget {
  homeView({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? CColors.dark : CColors.light,
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
                    padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 283,
                          mainAxisSpacing: CSizes.gridViewSpacing * 2,
                          crossAxisSpacing: CSizes.gridViewSpacing),
                      itemCount: productsData.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var product = productsData[index];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: CColors.white.withOpacity(0.5),
                            height: 400,
                            width: 200,
                            child: verticalProductCard(product: product),
                          ),
                        );
                      },
                    ),
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
