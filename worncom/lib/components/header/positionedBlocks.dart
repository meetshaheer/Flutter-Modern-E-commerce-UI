import 'package:flutter/material.dart';
import 'package:worncome/components/header/customShape.dart';
import 'package:worncome/utils/constants/colors.dart';

class headerPositionedBlock extends StatelessWidget {
  const headerPositionedBlock({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: CColors.primary,
      padding: EdgeInsets.all(0),
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
