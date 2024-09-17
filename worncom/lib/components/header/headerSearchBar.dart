import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class headerSearchBar extends StatelessWidget {
  const headerSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        cursorColor: CColors.dark,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: CColors.darkGrey),
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          filled: true,
          fillColor: CColors.light,
          hintText: "Search in Store!",
          hintStyle: TextStyle(color: CColors.darkGrey, fontWeight: FontWeight.normal),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
                left: CSizes.defaultSpace,
                right: CSizes.defaultSpace,
                top: CSizes.defaultSpace / 1.5,
                bottom: CSizes.defaultSpace / 1.5),
            child: Icon(
              Iconsax.search_normal,
              color: CColors.darkGrey,
            ),
          ),
        ),
      ),
    );
  }
}
