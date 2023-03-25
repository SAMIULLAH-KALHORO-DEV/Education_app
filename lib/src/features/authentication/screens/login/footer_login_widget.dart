import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';


class FooterLoginWidget extends StatelessWidget {
  const FooterLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        text: tSignup, style: TextStyle(color: Colors.blue))
                  ]),
            ))
      ],
    );
  }
}
