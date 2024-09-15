import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
        child: SafeArea(
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
                      height: 50,
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
                  height: CSizes.lg,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: "E-mail",
                      ),
                    ),
                    const SizedBox(
                      height: CSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: CSizes.spaceBtwInputFields,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (Value) {}),
                            const Text("Remember Me"),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"),
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
