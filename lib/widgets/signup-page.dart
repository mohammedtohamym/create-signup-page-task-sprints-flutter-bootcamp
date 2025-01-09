import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isVisible = true;
  String email = "";
  String password = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'email not valid';
                    }
                    return null;
                  },
                  onChanged: (value) => email = value,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'passrord must be atleast 6 characters';
                    }
                    return null;
                  },
                  onChanged: (value) => password = value,
                  decoration: InputDecoration(
                      labelText: 'password',
                      suffixIcon: IconButton(
                        icon: isVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                            debugPrint(isVisible.toString());
                          });
                        },
                      )),
                  obscureText: isVisible,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      debugPrint(emailController.text);
                      debugPrint(passwordController.text);
                    }
                    // Navigator.pushNamed(context, '/home');
                  },
                  child: const Text('Signup'),
                ),
                // Form(child: TextFormField()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
