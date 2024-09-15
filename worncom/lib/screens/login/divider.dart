import 'package:flutter/material.dart';
import 'package:worncome/utils/constants/colors.dart';

class divider extends StatelessWidget {
  const divider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? CColors.darkGrey : CColors.grey,
            thickness: 0.7,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          "Or Sign In With",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? CColors.darkGrey : CColors.grey,
            thickness: 0.7,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
