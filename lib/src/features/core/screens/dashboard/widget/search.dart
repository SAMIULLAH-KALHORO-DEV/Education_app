import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';



class DeshBoardSearchBox extends StatelessWidget {
  const DeshBoardSearchBox({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(border: Border(left: BorderSide(width: 4))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(tDashboardSearch, style: textTheme.headlineSmall),
        Icon(Icons.mic)
      ]),
    );
  }
}
