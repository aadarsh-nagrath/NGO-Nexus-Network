
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyasa/src/constants/image_string.dart';
import 'package:vyasa/src/constants/sizes.dart';
import 'package:vyasa/src/constants/text.dart';
import 'package:vyasa/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:vyasa/src/features/authentication/screens/signup/volunteer_signup.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                const SizedBox(height: defaultSize * 4),
                FormHeaderWidget(
                  image: forgotPass,
                  title: forgetPassword.toUpperCase(),
                  subTitle: forgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: formHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text(email),
                            hintText: email,
                            prefixIcon: Icon(Icons.mail_outline_rounded)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const OTPScreen());
                              },
                              child: const Text(next))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}