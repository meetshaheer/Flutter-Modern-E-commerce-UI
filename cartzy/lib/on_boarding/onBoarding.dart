import 'package:cartzy/on_boarding/customOnboarding/onboarding_custom.dart';
import 'package:cartzy/utils/constants/font_family.dart';
import 'package:cartzy/utils/constants/image_strings.dart';
import 'package:cartzy/utils/constants/sizes.dart';
import 'package:cartzy/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class onboarding extends StatefulWidget {
  onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
          Positioned(
            bottom: 70,
            left: 20,
            child: Container(
              child: Row(
                children: List.generate(
                  contents.length,
                  (Index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: currentIndex == Index ? 40 : 10,
                      height: 10,
                      decoration:
                          const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding()));
                }
              },
              style: ElevatedButton.styleFrom(shape: CircleBorder()),
              child: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
