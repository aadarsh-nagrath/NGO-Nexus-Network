import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyasa/src/constants/sizes.dart';
import 'package:vyasa/src/constants/text.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              otpTitle,
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(otpSubtitle.toUpperCase(), style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 40.0),
            const Text("$otpMessage support@vyasa.com", textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                // ignore: avoid_print
                onSubmit: (code) => print("OTP is => $code")),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text(next)),
            ),
          ],
        ),
      ),
    );
  }
}