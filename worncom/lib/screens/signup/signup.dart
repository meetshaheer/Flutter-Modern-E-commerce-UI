import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/login/inputForm.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';
import 'package:worncome/utils/theme/theme.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CAppTheme.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
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
          iconSize: 25,
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
              SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              // Form Input
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "First Name"),
                        ),
                      ),
                      SizedBox(
                        width: CSizes.spaceBtwItems,
                      ),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "Last Name"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(prefixIcon: Icon(Iconsax.user_edit), labelText: "Username"),
                  ),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct), labelText: "Email"),
                  ),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: "Password"),
                  ),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(prefixIcon: Icon(Iconsax.call), labelText: "Phone Number"),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
