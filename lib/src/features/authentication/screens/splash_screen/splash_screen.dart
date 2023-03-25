// import 'package:fire_code/src/constants/sizes.dart';
// import 'package:fire_code/src/constants/text_strings.dart';
// import 'package:flutter/material.dart';

// import '../../../../../home.dart';
// import '../../../../constants/image_strings.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   //
//   bool animate = false;
//   @override
//   // void initState() {
//   //   startAnimation();
//   // }

//   //
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(children: [
//           AnimatedPositioned(
//             duration: const Duration(microseconds: 1600),
//             top: animate ? 0 : -30,
//             left: animate ? 0 : -30,
//             child: Image(
//               height: 100,
//               width: 100,
//               image: AssetImage(
//                 tSplashImage,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 100,
//             left: tDefaultSize,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20),
//                 Text(
//                   tAppName,
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 ),
//                 Text(
//                   tAppTagLine,
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             ),
//           ),
//           const Positioned(
//             bottom: 100,
//             left: 0,
//             child: Image(
//               // height: 100,
//               width: 350,
//               image: AssetImage(
//                 tSplashTipIcon,
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }

//   // Future startAnimation() async {
//   //   await Future.delayed(Duration(microseconds: 500));
//   //   setState(() => animate = true);

//   //   await Future.delayed(Duration(microseconds: 5000));
//   //   Navigator.pushReplacement(
//   //       context,
//   //       MaterialPageRoute(
//   //         builder: (context) => Home(),
//   //       ));
//   // }
// }
