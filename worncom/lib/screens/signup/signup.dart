import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/login/divider.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/screens/login/socialLoginButtons.dart';
import 'package:worncome/screens/signup/signupForm.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          iconSize: CSizes.iconLg,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => login(),
              ),
            );
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: CSizes.defaultSpace),
            child: Icon(
              Iconsax.backward,
              color: dark ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: CSizes.appBarHeight / 2,
            bottom: CSizes.defaultSpace,
            left: CSizes.defaultSpace,
            right: CSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontFamily: "Poppins",
                    ),
              ),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              // Form Input
              signupForm(dark: dark),

              divider(dark: dark),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              socialLoginButtons()
            ],
          ),
        ),
      ),
    );
  }
}
