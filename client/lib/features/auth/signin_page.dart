import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("Sign In screen"),
      ),
    );
  }
}
