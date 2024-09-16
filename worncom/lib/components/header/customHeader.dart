import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/headerSearchBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/utils/constants/sizes.dart';

class customHeader extends StatelessWidget {
  const customHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerPositionedBlock(
              child: Padding(
                padding: EdgeInsets.only(right: CSizes.defaultSpace, left: CSizes.defaultSpace),
                child: Column(
                  children: [
                    // App Bar
                    PreferredSize(
                      preferredSize: Size.fromHeight(60),
                      child: CustomAppBar(),
                    ),
                    SizedBox(
                      height: CSizes.spaceBtwSections,
                    ),

                    // Search Bar
                    headerSearchBar()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
