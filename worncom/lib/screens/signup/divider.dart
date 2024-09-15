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
      children: [
        Flexible(
          child: Divider(
            thickness: 0.9,
            indent: 60,
            endIndent: 5,
            color: dark ? CColors.darkGrey : CColors.grey,
          ),
        ),
        Text(
          "Or Sign Up With",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            thickness: 0.9,
            indent: 5,
            endIndent: 60,
            color: dark ? CColors.darkGrey : CColors.grey,
          ),
        )
      ],
    );
  }
}
