import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      ElevatedButton.icon(
                        onPressed: () {
                          print("Google");
                        },
                        icon: SvgPicture.asset(
                          'assets/images/google.svg',
                          height: 80,
                          width: 80,
                        ),
                        label: const Text("Google"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print("dummy");
                          },
                          child: const Text("Dummy"))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
