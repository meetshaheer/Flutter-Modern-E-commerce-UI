import 'package:flutter/material.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/strings.dart';

class navigationDots extends StatelessWidget {
  const navigationDots({
    super.key,
    required this.currentIndex,
    required this.dark,
  });

  final int currentIndex;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      left: 20,
      child: Row(
        children: List.generate(
          contents.length,
          (Index) => Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: currentIndex == Index ? 50 : 16,
              height: 6,
              decoration: BoxDecoration(
                color: dark ? CColors.light : CColors.dark,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
