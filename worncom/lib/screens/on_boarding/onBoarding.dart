import 'package:worncome/screens/on_boarding/customOnboarding/onboardingNavButton.dart';
import 'package:worncome/screens/on_boarding/customOnboarding/onboardingNavDots.dart';
import 'package:worncome/screens/on_boarding/customOnboarding/onboarding_custom.dart';
import 'package:worncome/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:worncome/utils/theme/theme.dart';

class onboarding extends StatefulWidget {
  onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return customOnBoarding(
                headline: contents[index].title,
                description: contents[index].desc,
                onBoardingImage: contents[index].image,
              );
            },
          ),
          navigationDots(currentIndex: currentIndex, dark: dark),
          onBoardingNavButton(currentIndex: currentIndex),
        ],
      ),
    );
  }
}
