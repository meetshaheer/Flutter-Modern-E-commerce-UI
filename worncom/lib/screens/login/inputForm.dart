import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/signup/signup.dart';
import 'package:worncome/utils/constants/sizes.dart';

class inputForm extends StatelessWidget {
  const inputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
            obscureText: true,
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
              ),
            ],
          ),
          const SizedBox(
            height: CSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign In",
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
              onPressed: () {
                Navigator.push(context, (MaterialPageRoute(builder: (context) => const signup())));
              },
              child: Text(
                "Create Account",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
