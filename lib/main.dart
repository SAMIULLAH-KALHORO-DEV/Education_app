import 'package:fire_code/src/features/authentication/screens/login/login_screen.dart';
import 'package:fire_code/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:fire_code/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:fire_code/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:fire_code/src/features/core/screens/dashboard/dashboard.dart';
import 'package:fire_code/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.system,
        home: DashBoard());
  }
}
