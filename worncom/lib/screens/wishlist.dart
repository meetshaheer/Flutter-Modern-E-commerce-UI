import 'package:flutter/material.dart';
import 'package:worncome/components/appBar/customAppBar.dart';
import 'package:worncome/components/header/positionedBlocks.dart';
import 'package:worncome/utils/constants/sizes.dart';

class wishlistView extends StatelessWidget {
  const wishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerPositionedBlock(
              top: -260,
              right: -280,
              height: 140,
              child: const Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(CSizes.defaultSpace),
                        child: CustomAppBar(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
