import 'package:fire_code/src/constants/image_strings.dart';
import 'package:fire_code/src/constants/sizes.dart';
import 'package:fire_code/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../forget_password_otp/opt_screen.dart';

class ForgetPassowrdMailScreen extends StatelessWidget {
  const ForgetPassowrdMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: tDefaultSize * 4),
            FormHeaderWidget(
              image: tForgetPasswordImage,
              title: tForgetPassowrd,
              Subtitle: tForgetPasswordSubTitle,
              crossAxisAlignment: CrossAxisAlignment.center,
              heightBetween: 30.0,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: tDefaultSize),
            Form(
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: tEmail,
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OTPScreen(),
                          ));
                        },
                        child: Text(tNext)))
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
