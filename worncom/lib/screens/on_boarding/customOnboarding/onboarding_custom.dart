import 'package:worncome/utils/constants/font_family.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class customOnBoarding extends StatelessWidget {
  const customOnBoarding({
    super.key,
    required this.headline,
    required this.description,
    required this.onBoardingImage,
  });

  final String onBoardingImage;
  final String headline;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          width: 350,
          image: AssetImage(onBoardingImage),
        ),
        const SizedBox(
          height: 70,
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(
          headline,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: poppins.font),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontFamily: poppins.font),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
