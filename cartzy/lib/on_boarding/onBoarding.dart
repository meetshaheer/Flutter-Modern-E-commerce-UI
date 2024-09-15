import 'package:cartzy/on_boarding/customOnboarding/onboarding_custom.dart';
import 'package:cartzy/utils/constants/font_family.dart';
import 'package:cartzy/utils/constants/image_strings.dart';
import 'package:cartzy/utils/constants/sizes.dart';
import 'package:cartzy/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Stack(
            children: [
              PageView(
                children: const [
                  customOnBoarding(
                    headline: CStrings.onBoardingTitle1,
                    description: CStrings.onBoardingSubTitle1,
                    onBoardingImage: CImages.onBoardingImage1,
                  ),
                  customOnBoarding(
                    headline: CStrings.onBoardingTitle2,
                    description: CStrings.onBoardingSubTitle2,
                    onBoardingImage: CImages.onBoardingImage2,
                  ),
                  customOnBoarding(
                    headline: CStrings.onBoardingTitle3,
                    description: CStrings.onBoardingSubTitle3,
                    onBoardingImage: CImages.onBoardingImage3,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
