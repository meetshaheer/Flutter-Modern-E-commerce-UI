import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class verifiyEmail extends StatelessWidget {
  const verifiyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: CSizes.defaultSpace),
            child: IconButton(
              iconSize: CSizes.iconLg,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => login(),
                  ),
                );
              },
              icon: Icon(Iconsax.close_square),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                width: 300,
                height: 300,
                image: AssetImage(
                  "assets/images/animations/sammy-line-man-receives-a-mail.png",
                ),
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                "support@worcom.com",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                textAlign: TextAlign.center,
                "Congratulations! Your Account Awaits. Verify Your Email To Start Shopping and Experience a world of Unrivaled Deals and Personalized Offers",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontFamily: "Poppins",
                    ),
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Email",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
