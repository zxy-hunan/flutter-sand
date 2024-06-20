import 'package:flutter/material.dart';
import 'package:flutter_sand/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/jstsbg.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
