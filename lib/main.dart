import 'package:ettamn/health_profile.dart';
import 'package:ettamn/home_screen.dart';
import 'package:ettamn/labs.dart';
import 'package:ettamn/login_screen.dart';
import 'package:ettamn/main_profile.dart';
import 'package:ettamn/Ptescriptions.dart';
import 'package:ettamn/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}