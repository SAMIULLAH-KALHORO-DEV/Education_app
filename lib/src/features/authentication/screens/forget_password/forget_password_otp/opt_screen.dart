import 'package:fire_code/src/constants/sizes.dart';
import 'package:fire_code/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpTitle,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                )),
            Text(tOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 40),
            Text("$tOtpMessage support@samdeveloper.com",
                textAlign: TextAlign.center),
            const SizedBox(height: 20),
            OtpTextField(
                onSubmit: (code) {
                  print("OTP is => $code");
                },
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true),
            const SizedBox(height: 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text(tNext)))
          ],
        ),
      ),
    );
  }
}
