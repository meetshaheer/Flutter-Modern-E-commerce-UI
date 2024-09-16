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
                  Text(
                    "Don't worry sometimes people can forget too, enter your email and we will send your password is link.",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: "Poppins",
                        ),
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwSections * 2,
                  ),
                  Form(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "E-mail",
                          prefixIcon: Icon(
                          Iconsax.forward,
                        )),
                  )),
                  const SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ),
                        );
                      },
                      child: Text(
                        "Submit",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
