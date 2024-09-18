
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:worncome/components/rounded_image.dart';
import 'package:worncome/utils/constants/image_strings.dart';
import 'package:worncome/utils/constants/sizes.dart';

class promoSlider extends StatelessWidget {
  const promoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.defaultSpace / 2),
      child: Column(
        children: [
          CarouselSlider(
            items: const [
              roundedImage(
                imagepath: CImages.promoBanner1,
              ),
              roundedImage(
                imagepath: CImages.promoBanner2,
              ),
              roundedImage(
                imagepath: CImages.promoBanner3,
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
            ),
          ),
        ],
      ),
    );
  }
}
