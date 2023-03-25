import 'package:fire_code/src/features/core/models/dashboard/catogariesmodel.dart';
import 'package:flutter/material.dart';

class DashboardCatogaries extends StatelessWidget {
  const DashboardCatogaries({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = dashboardCategoreisModel.list;
    return SizedBox(
        height: 45,
        child: ListView.builder(
          itemCount: list.length ,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: list[index].onPress,
            child: SizedBox(
              width: 179,
              height: 50,
              child: Row(children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black87),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: textTheme.headlineSmall?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,
                          style: textTheme.titleLarge,
                          overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading,
                          style: textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                )
              ]),
            ),
          ),

          // SizedBox(
          //   width: 179,
          //   height: 50,
          //   child: Row(children: [
          //     Container(
          //       width: 45,
          //       height: 45,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: Colors.black87),
          //       child: Center(
          //         child: Text(
          //           "JS",
          //           style: textTheme.headlineSmall?.apply(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //     const SizedBox(width: 5),
          //     Flexible(
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text("Java Script",
          //               style: textTheme.titleLarge,
          //               overflow: TextOverflow.ellipsis),
          //           Text("10 Lessons",
          //               style: textTheme.bodyMedium,
          //               overflow: TextOverflow.ellipsis)
          //         ],
          //       ),
          //     )
          //   ]),
          // ),
          // SizedBox(
          //   width: 179,
          //   height: 50,
          //   child: Row(children: [
          //     Container(
          //       width: 45,
          //       height: 45,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: Colors.black87),
          //       child: Center(
          //         child: Text(
          //           "JS",
          //           style: textTheme.headlineSmall?.apply(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //     const SizedBox(width: 5),
          //     Flexible(
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text("Java Script",
          //               style: textTheme.titleLarge,
          //               overflow: TextOverflow.ellipsis),
          //           Text("10 Lessons",
          //               style: textTheme.bodyMedium,
          //               overflow: TextOverflow.ellipsis)
          //         ],
          //       ),
          //     )
          //   ]),
          // ),
          // SizedBox(
          //         width: 179,
          //         height: 50,
          //         child: Row(children: [
          //           Container(
          //             width: 45,
          //             height: 45,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 color: Colors.black87),
          //             child: Center(
          //               child: Text(
          //                 "JS",
          //                 style: textTheme.headlineSmall?.apply(color: Colors.white),
          //               ),
          //             ),
          //           ),
          //           const SizedBox(width: 5),
          //           Flexible(
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Text("Java Script",
          //                     style: textTheme.titleLarge,
          //                     overflow: TextOverflow.ellipsis),
          //                 Text("10 Lessons",
          //                     style: textTheme.bodyMedium,
          //                     overflow: TextOverflow.ellipsis)
          //               ],
          //             ),
          //           )
          //         ]),
          //       ),
          //     ],
          //   ),
          // );
        ));
  }
}
