import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_mail/forget_password_mail_screen.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPassowrdTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 30),
            ForgetPassowrdbtnWidget(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgetPassowrdMailScreen()),
                );
              },
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subtitle: tResetViaEmail,
            ),
            const SizedBox(height: 20),
            ForgetPassowrdbtnWidget(
              onTap: () {
                // Navigator.pop(context);
              },
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneN,
              subtitle: tResetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
