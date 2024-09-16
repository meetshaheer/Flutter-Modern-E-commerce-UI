import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/account%20creation/accountCreationMsg.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/utils/constants/sizes.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: CSizes.appBarHeight,
          left: CSizes.defaultSpace,
          right: CSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: CSizes.iconLg,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login(),
                      ),
                    );
                  },
                  icon: const Icon(Iconsax.close_square),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: CSizes.appBarHeight,
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  Text(
                    "Forget Password",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: "Poppins"),
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
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
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => accountCreated(),
                          ),
                        );
                      },
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
          ],
        ),
      ),
    );
  }
}
