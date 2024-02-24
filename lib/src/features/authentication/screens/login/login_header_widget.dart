import 'package:flutter/material.dart';
import 'package:vyasa/src/constants/image_string.dart';
import 'package:vyasa/src/constants/text.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage(mainLogoImage),
            height: size.height * 0.2),
        Text(loginTitle, style: Theme.of(context).textTheme.displayLarge),
        Text(loginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}