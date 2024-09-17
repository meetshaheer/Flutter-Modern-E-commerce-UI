import 'package:flutter/material.dart';
import 'package:worncome/utils/constants/image_strings.dart';
import 'package:worncome/utils/constants/sizes.dart';

class roundedImage extends StatelessWidget {
  const roundedImage({
    super.key,
    required this.imagepath,
  });

  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CSizes.md),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(CSizes.md),
          child: Image(
            image: AssetImage(imagepath),
          )),
    );
  }
}

List caticon = [];
