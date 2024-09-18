import 'package:flutter/material.dart';
import 'package:worncome/components/header/customShape.dart';
import 'package:worncome/utils/constants/colors.dart';

class headerPositionedBlock extends StatelessWidget {
  headerPositionedBlock({
    super.key,
    required this.child,
    this.height,
    this.top,
    this.right,
  });
  final Widget child;
  final double? height;
  final double? top;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? 350,
      decoration: BoxDecoration(color: CColors.primary, borderRadius: BorderRadius.circular(40)),
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(top: top ?? -150, right: right ?? -250, child: customShapeWidget()),
          Positioned(top: top ?? 100, right: right ?? -300, child: customShapeWidget()),
          child
        ],
      ),
    );
  }
}
