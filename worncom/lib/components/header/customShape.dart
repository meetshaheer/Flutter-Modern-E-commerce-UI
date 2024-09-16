import 'package:flutter/material.dart';
import 'package:worncome/utils/constants/colors.dart';

class customShapeWidget extends StatelessWidget {
  const customShapeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        color: CColors.textWhite.withOpacity(0.1),
        borderRadius: BorderRadius.circular(500),
      ),
    );
  }
}
