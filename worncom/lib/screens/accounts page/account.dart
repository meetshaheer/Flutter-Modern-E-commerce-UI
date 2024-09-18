import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/screens/accounts%20page/accountSettingAllTiles.dart';
import 'package:worncome/screens/accounts%20page/appSettingAllTiles.dart';
import 'package:worncome/utils/constants/image_strings.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class accountSettign extends StatelessWidget {
  const accountSettign({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerPositionedBlock(
              top: -260,
              right: -280,
              height: 140,
              child: const Stack(
                children: [
                  Positioned(
                    top: CSizes.appBarHeight + 5,
                    left: CSizes.defaultSpace,
                    child: Image(
                      image: AssetImage(CImages.user),
                      width: 50,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CSizes.defaultSpace),
                        child: Padding(
                          padding: EdgeInsets.only(left: CSizes.defaultSpace * 2),
                          child: CustomAppBar(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: CSizes.defaultSpace * 2,
                left: CSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Account Setting Heading
                  //
                  Text("Account Setting", style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: CSizes.defaultSpace / 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      // All Account Setting Tiles
                      accountSettingAllTiles(dark: dark),
                      // Space
                      //
                      const SizedBox(
                        height: CSizes.defaultSpace / 1.5,
                      ),
                      //
                      // App Setting Heading
                      Text("App Setting", style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(
                        height: CSizes.defaultSpace / 2,
                      ),
                      //
                      // App Setting tiles

                      appSettingAllTiles(dark: dark)
                    ],
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
