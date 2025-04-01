import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Screen/OnBoarding/onboarding_screen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(image: 'whatsapp.png'),
            const SizedBox(height: 20),
            UiHelper.CustomText(
              text: 'WhatsApp',
              height: 18,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
