import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/email%20verification/verifyEmail.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class signupForm extends StatelessWidget {
  const signupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "First Name"),
                ),
              ),
              const SizedBox(
                width: CSizes.spaceBtwItems,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "Last Name"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user_edit), labelText: "Username"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct), labelText: "Email"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash), labelText: "Password"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.call), labelText: "Phone Number"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwSections / 2,
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (Values) {}),
              const Text("I agree to", style: TextStyle(fontSize: 13)),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : CColors.primary,
                    fontSize: 13,
                    color: dark ? Colors.white : CColors.primary,
                  ),
                ),
              ),
              const Text("and", style: TextStyle(fontSize: 13)),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Terms of use",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : CColors.primary,
                    fontSize: 13,
                    color: dark ? Colors.white : CColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: CSizes.spaceBtwSections / 2,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => verifiyEmail(),
                  ),
                );
              },
              child: Text(
                "Create Account",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwSections,
          )
        ],
      ),
    );
  }
}
