import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/utils/constants/image_strings.dart';
import 'package:worncome/utils/constants/sizes.dart';

class accountSettign extends StatelessWidget {
  const accountSettign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerPositionedBlock(
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
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Text("Account Setting", style: Theme.of(context).textTheme.headlineSmall),
            )
          ],
        ),
      ),
    );
  }
}
