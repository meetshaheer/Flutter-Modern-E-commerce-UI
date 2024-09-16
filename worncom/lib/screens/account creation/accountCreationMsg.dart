import 'package:flutter/material.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/utils/constants/sizes.dart';

class accountCreated extends StatelessWidget {
  const accountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: CSizes.defaultSpace,
          right: CSizes.defaultSpace,
          top: CSizes.appBarHeight * 2,
        ),
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
                textAlign: TextAlign.center,
                "Your account successfully created!",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                textAlign: TextAlign.center,
                "Welcome to your ultimate shopping Destination:Your account is created. Unleash the joy of seamless online shopping!",
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
                        builder: (context) => login(),
                      ),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
