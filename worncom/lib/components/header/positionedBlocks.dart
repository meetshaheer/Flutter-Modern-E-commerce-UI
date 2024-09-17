import 'package:flutter/material.dart';
import 'package:worncome/components/header/customShape.dart';
import 'package:worncome/utils/constants/colors.dart';

class headerPositionedBlock extends StatelessWidget {
  headerPositionedBlock({
    super.key,
    required this.child,
    this.height,
  });
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? 350,
      decoration: BoxDecoration(color: CColors.primary, borderRadius: BorderRadius.circular(40)),
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          const Positioned(top: -150, right: -250, child: customShapeWidget()),
          const Positioned(top: 100, right: -300, child: customShapeWidget()),
          child
        ],
      ),
    );
  }
}
