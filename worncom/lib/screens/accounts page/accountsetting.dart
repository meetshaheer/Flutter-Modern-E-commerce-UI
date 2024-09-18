import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/utils/constants/colors.dart';
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
              padding: const EdgeInsets.only(top: CSizes.defaultSpace * 2, left: CSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Account Setting", style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: CSizes.defaultSpace / 2,
                  ),
                  Column(
                    children: [
                      accountSettingTiles(dark: dark),
                      accountSettingTiles(dark: dark),
                      accountSettingTiles(dark: dark),
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

class accountSettingTiles extends StatelessWidget {
  const accountSettingTiles({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Iconsax.safe_home,
            color: dark ? CColors.primary : CColors.dark,
          ),
          title: Text("My Addresses"),
          subtitle: Text(
            "Set shopping delivery address",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}