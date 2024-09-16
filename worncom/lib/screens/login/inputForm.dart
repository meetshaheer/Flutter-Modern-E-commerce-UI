import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/components/header/customHeader.dart';
import 'package:worncome/screens/forgot%20password/forgotPassword.dart';
import 'package:worncome/screens/on%20boarding/onBoarding.dart';
import 'package:worncome/screens/signup/signup.dart';
import 'package:worncome/utils/constants/sizes.dart';

class inputForm extends StatefulWidget {
  inputForm({
    super.key,
  });

  @override
  State<inputForm> createState() => _inputFormState();
}

class _inputFormState extends State<inputForm> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void nullFields() {
      if (loginEmailController.text.isEmpty && loginPasswordController.text.isEmpty) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              title: Text(
                "Oops...",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              content: Text("Please fillup the fields with correct username and password, Thanks"),
              actions: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Go Back",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => customHeader(),
          ),
        );
      }
    }

    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: loginEmailController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: "E-mail",
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: loginPasswordController,
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
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => forgotPassword(),
                    ),
                  );
                },
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
              onPressed: () {
                setState(() {
                  nullFields();
                });
              },
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
