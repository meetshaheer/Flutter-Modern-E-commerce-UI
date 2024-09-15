import 'package:flutter/material.dart';
import 'package:worncome/screens/login/divider.dart';
import 'package:worncome/screens/login/inputForm.dart';
import 'package:worncome/screens/login/socialLoginButtons.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CAppTheme.isDarkMode(context);
    String imageDark = "assets/logos/logi_image_dark.png";
    String imageLight = "assets/logos/logi_image_light.png";
    //

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: CSizes.appBarHeight,
            bottom: CSizes.defaultSpace,
            right: CSizes.defaultSpace,
            left: CSizes.defaultSpace,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    width: 150,
                    image: AssetImage(dark ? imageDark : imageLight),
                  ),
                  const SizedBox(
                    height: CSizes.xl,
                  ),
                  Text(
                    "Welcome Back,",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontFamily: "Poppins",
                        ),
                  ),
                  const SizedBox(
                    height: CSizes.sm,
                  ),
                  Text(
                    "Access Limitless Possibilities with Unmatched Simplicity.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: "Poppins",
                        ),
                  )
                ],
              ),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              inputForm(),
              //
              divider(dark: dark),
              //
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              //
              socialLoginButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
