import 'package:flutter/material.dart';
import 'package:vyasa/src/constants/sizes.dart';
import 'package:vyasa/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:vyasa/src/features/authentication/screens/login/login_header_widget.dart';

import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}