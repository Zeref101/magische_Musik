import 'package:client/features/auth/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Background.png"),
                alignment: Alignment.topCenter)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/logo2.png'),
              ),
              const SizedBox(height: 1),
              const Text(
                "Songs for everyone.",
                selectionColor: Colors.white,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          width: 250,
                          height: 40,
                          child: Tooltip(
                            message: 'Google button',
                            child: InkWell(
                              onLongPress: () {
                                print("Long Pressed");
                              },
                              child: Material(
                                type: MaterialType
                                    .transparency, // makes the button transparent
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    print("Google");
                                  },
                                  icon: Image.asset(
                                    'assets/images/Google.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  label: const Text(
                                    "Google",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Already have an Account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SigninPage()));
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
