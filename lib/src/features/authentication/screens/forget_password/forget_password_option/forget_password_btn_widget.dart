import 'package:flutter/material.dart';

class ForgetPassowrdbtnWidget extends StatelessWidget {
  const ForgetPassowrdbtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    super.key,
  });
  final IconData btnIcon;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black12,
        ),
        child: Row(children: [
          Icon(
            btnIcon,
            size: 60.0,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              Text(subtitle, style: Theme.of(context).textTheme.bodyLarge),
            ],
          )
        ]),
      ),
    );
  }
}
