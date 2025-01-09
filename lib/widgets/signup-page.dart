import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  static const String routeName = '/signup';
  const SignupPage({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'password',

              ),
              obscureText: true,
            )
            // Form(child: TextFormField()),
          ],
        ),
      ),
    );
  }
}