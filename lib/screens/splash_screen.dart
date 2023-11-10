import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tasty_dog/utils/screen_size.dart';

import 'login_screen.dart';

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: ScreenSize.height,
          width: ScreenSize.width,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            color: Colors.black.withOpacity(0.4),
            image: const DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: ScreenSize.height,
          width: ScreenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tasty Dog",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.greenAccent[400],
                ),
              ),
              const Text(
                "Slogan here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
