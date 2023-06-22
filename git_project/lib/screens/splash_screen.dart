import 'dart:async';

import 'package:flutter/material.dart';
import 'package:git_project/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.network(
        "https://static.vecteezy.com/system/resources/previews/007/918/427/non_2x/letter-m-logo-company-brand-initials-design-sticker-screen-printing-illustration-free-vector.jpg",
        fit: BoxFit.fill,
      ),
    ));
  }
}
