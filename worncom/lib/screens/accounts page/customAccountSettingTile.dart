
import 'package:flutter/material.dart';
import 'package:worncome/utils/constants/colors.dart';

class accountSectionTile extends StatelessWidget {
  const accountSectionTile({
    super.key,
    required this.dark,
    required this.tileicon,
    required this.title,
    required this.subtitle,
  });

  final bool dark;
  final IconData tileicon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            tileicon,
            color: CColors.primary,
          ),
          title: Text(title),
          subtitle: Text(
            subtitle,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
          ),
        ),
      ],
    );
  }
}
