import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';



class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(tLoginImage), height: size.height * 0.2),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headlineMedium),
        Text(tloginSubTitle, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
