import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/home-page.dart';
import 'package:shopping_app/widgets/signup-page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        SignupPage.routeName: (context) => const SignupPage(),
      },
      initialRoute: SignupPage.routeName,
    );
  }
}
