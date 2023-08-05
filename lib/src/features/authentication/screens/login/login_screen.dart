import 'package:fire_code/src/common_widgets/form/form_header_widget.dart';
import 'package:fire_code/src/constants/image_strings.dart';
import 'package:fire_code/src/constants/sizes.dart';
import 'package:fire_code/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'footer_login_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* -- Section 1 */
                FormHeaderWidget(
                    image: tLoginImage,
                    
                    title: tLoginTitle,
                    Subtitle: tloginSubTitle),
                SizedBox(height: tDefaultSize),
                /* -- Section 2 Form */
                LoginForm(),
                /* -- Section 2 form end */
                FooterLoginWidget()
              ],
            )),
          ),
        ),
      ),
    );
  }
}
