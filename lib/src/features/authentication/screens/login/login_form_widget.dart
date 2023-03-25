import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forget_password/forget_password_option/forget_password_bottom_model_sheet.dart';
import '../forget_password/forget_password_option/forget_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                border: OutlineInputBorder()),
          ),
          SizedBox(height: tFomrHeight),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassowrd,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
          ),
          const SizedBox(height: tFomrHeight - 20),
          // FORGET PASSWORD BIN
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                   ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: Text(tForgetPassowrd))),
        //  LOGIN BTN
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: null, child: Text(tLogin.toUpperCase())))
        ],
      ),
    ));
  }
}
