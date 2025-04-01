import 'package:flutter/material.dart';
import 'package:whatsapp/Screen/Login/login_screen.dart';
import 'package:whatsapp/Screen/OTP/opt_screen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/image.png'),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: 'Welcome to WhatsApp',
              height: 20,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'Read out', height: 14),
                SizedBox(width: 5),
                UiHelper.CustomText(
                  text: 'Privacy Policy',
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                SizedBox(width: 5),
                UiHelper.CustomText(
                  text: "Tap'Agree and Continue'",
                  height: 14,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'to accept the', height: 14),
                SizedBox(width: 5),
                UiHelper.CustomText(
                  text: 'Terms of Service',
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        text: 'AGREE AND CONTINUE',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
