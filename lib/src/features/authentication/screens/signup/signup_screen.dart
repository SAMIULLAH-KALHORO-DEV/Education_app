import 'package:fire_code/src/constants/text_strings.dart';
import 'package:fire_code/src/features/authentication/screens/signup/widget/singupformwidget.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(children: [
              FormHeaderWidget(
                image: tLoginImage,
                title: tSignUpTitle,
                Subtitle: tSignUpSubTitle,
              ),
              const SignUpFormWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OR"),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                        icon: Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20,
                        ),
                        onPressed: () {},
                        label: Text(tSignInWithGoogle)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                            text: tAlreadyHaveAnAccount,
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                  text: tLogin.toUpperCase(),
                                  style: TextStyle(color: Colors.blue))
                            ]),
                      ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
