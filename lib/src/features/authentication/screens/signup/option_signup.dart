import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyasa/src/features/authentication/screens/signup/volunteer_signup.dart';


class OptionSignup extends StatelessWidget {
  const OptionSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: SignUpPage(),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Signup',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            Get.to(() => {});
          },
          child: const Text('NGO'),
        ),
        const SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            Get.to(() => const SignUpScreen());
          },
          child: const Text('Volunteer'), 
        ),
      ],
    ),
  );
}
}