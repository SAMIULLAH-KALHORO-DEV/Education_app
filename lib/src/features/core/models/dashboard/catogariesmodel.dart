import 'package:flutter/material.dart';

class dashboardCategoreisModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  dashboardCategoreisModel(
      this.title, this.heading, this.subHeading, this.onPress);
  static List<dashboardCategoreisModel> list = [
    dashboardCategoreisModel("JS", "Java Script", "10 Lessons", null),
    dashboardCategoreisModel("F", "Flutter", "8 Lessons", null),
    dashboardCategoreisModel("D", "Dart", "20 Lessons", null),
    dashboardCategoreisModel("JS", "Java Script", "10 Lessons", null),
    dashboardCategoreisModel("JS", "Java Script", "10 Lessons", null),
  ];
}
