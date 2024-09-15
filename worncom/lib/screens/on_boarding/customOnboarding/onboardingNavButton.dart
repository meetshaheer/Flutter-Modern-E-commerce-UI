import 'package:flutter/material.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/utils/constants/strings.dart';

class onBoardingNavButton extends StatelessWidget {
  const onBoardingNavButton({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 45,
      right: 20,
      child: ElevatedButton(
        onPressed: () {
          if (currentIndex == contents.length - 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const login()));
          }
        },
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
