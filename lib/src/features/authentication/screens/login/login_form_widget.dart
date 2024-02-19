import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyasa/src/constants/sizes.dart';
import 'package:vyasa/src/constants/text.dart';
import 'package:vyasa/src/constants/image_string.dart';
import 'package:vyasa/src/features/authentication/screens/signup/option_signup.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: formHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(googleLogoImage), width: 20.0),
            onPressed: () {},
            label: const Text(signInWithGoogle),
          ),
        ),
        const SizedBox(height: formHeight - 20),
        TextButton(
          onPressed: () {
            Get.to(() => const OptionSignup());
          },
          child: Text.rich(
            TextSpan(
                text: dontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(text: signup, 
                  style: TextStyle(color: Colors.blue)),
                ]),
          ),
        ),
      ],
    );
  }
}