import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/email%20verification/verifyEmail.dart';
import 'package:worncome/utils/constants/colors.dart';
import 'package:worncome/utils/constants/sizes.dart';

class signupForm extends StatefulWidget {
  const signupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  State<signupForm> createState() => _signupFormState();
}

TextEditingController signupFnameController = TextEditingController();
TextEditingController signupLnameController = TextEditingController();
TextEditingController signupUsernameController = TextEditingController();
TextEditingController signupEmailController = TextEditingController();
TextEditingController signupPasswordController = TextEditingController();
TextEditingController signupPhoneController = TextEditingController();

class _signupFormState extends State<signupForm> {
  @override
  Widget build(BuildContext context) {
    void nullFields() {
      if (signupFnameController.text.isEmpty &&
          signupLnameController.text.isEmpty &&
          signupUsernameController.text.isEmpty &&
          signupEmailController.text.isEmpty &&
          signupPasswordController.text.isEmpty &&
          signupPhoneController.text.isEmpty) {
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
              content: const Text(
                  "Please fillup the fields with correct Names, Usernames, Email, Password & Phone Number, Thanks"),
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
            builder: (context) => const verifiyEmail(),
          ),
        );
      }
    }

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: signupFnameController,
                  expands: false,
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "First Name"),
                ),
              ),
              const SizedBox(
                width: CSizes.spaceBtwItems,
              ),
              Expanded(
                child: TextFormField(
                  controller: signupLnameController,
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
            controller: signupUsernameController,
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user_edit), labelText: "Username"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            controller: signupEmailController,
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct), labelText: "Email"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            controller: signupPasswordController,
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash), labelText: "Password"),
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          TextFormField(
            controller: signupPhoneController,
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
                    decorationColor: widget.dark ? Colors.white : CColors.primary,
                    fontSize: 13,
                    color: widget.dark ? Colors.white : CColors.primary,
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
                    decorationColor: widget.dark ? Colors.white : CColors.primary,
                    fontSize: 13,
                    color: widget.dark ? Colors.white : CColors.primary,
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
                setState(() {
                  nullFields();
                });
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
