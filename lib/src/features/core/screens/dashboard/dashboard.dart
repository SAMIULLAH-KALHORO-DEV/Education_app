import 'package:fire_code/src/constants/colors.dart';
import 'package:fire_code/src/constants/image_strings.dart';
import 'package:fire_code/src/constants/sizes.dart';
import 'package:fire_code/src/constants/text_strings.dart';
import 'package:fire_code/src/features/core/screens/dashboard/widget/appbar.dart';
import 'package:fire_code/src/features/core/screens/dashboard/widget/dashboardbanners.dart';
import 'package:fire_code/src/features/core/screens/dashboard/widget/dashboardcatogaries.dart';
import 'package:fire_code/src/features/core/screens/dashboard/widget/search.dart';
import 'package:fire_code/src/features/core/screens/dashboard/widget/top_courses.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashBoardPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // --- Headings
            Text(tDashboardTitle, style: textTheme.bodyMedium),
            Text(tDasahboardHeading, style: textTheme.headlineMedium),
            SizedBox(height: tDashBoardPadding - 5),
            // Search Box--
            DeshBoardSearchBox(textTheme: textTheme),

            const SizedBox(height: tDashBoardPadding),
            // Catogaries
            DashboardCatogaries(textTheme: textTheme),

            SizedBox(height: tDashBoardPadding),
            DashboardBanners(textTheme: textTheme),
            SizedBox(height: tDashBoardPadding),
            //
            // Top Courses
            //
            Text(
              tDashboardTopCourses,
              style: textTheme.titleLarge
                  ?.apply(fontWeightDelta: 10, fontSizeFactor: 1.2),
            ),
            SizedBox(height: 10),
            DashboardTopCourses(textTheme: textTheme)
          ]),
        ),
      ),
    );
  }
}
