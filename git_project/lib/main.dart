import 'package:flutter/material.dart';
import 'package:git_project/providers/product_provider.dart';
// import 'package:git_project/screens/home_page.dart';
// import 'package:git_project/screens/login_screen.dart';
// import 'package:git_project/screens/signup_page.dart';
import 'package:git_project/screens/splash_screen.dart';
// import 'package:git_project/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
          color: Colors.green,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo Project',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true,
          ),
          home: const SplashScreen()),
    );
  }
}
