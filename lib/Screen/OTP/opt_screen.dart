import 'package:flutter/material.dart';
import 'package:whatsapp/Screen/Login/login_screen.dart';
import 'package:whatsapp/Screen/Profile/profile_screen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class OptScreen extends StatelessWidget {
  String phonenumber;
  OptScreen({required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70),
            UiHelper.CustomText(
              text: 'Verifying your number',
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 30),
            UiHelper.CustomText(
              text: "You've tried to register +977${phonenumber}",
              height: 15,
            ),
            UiHelper.CustomText(
              text: 'recently. Wait before requesting as sms or a call',
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'with your code.', height: 15),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    // Handle resend code action
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: UiHelper.CustomText(
                    text: 'Wrong number?',
                    height: 15,
                    color: Color(0XFF00A884),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp2Controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp3Controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp4Controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp5Controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp6Controller),
              ],
            ),
            const SizedBox(height: 30),
            UiHelper.CustomText(
              text: 'Don\'t receive the code?',
              height: 14,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        onPressed: () {
          // Handle the button press
          print('Phone Number: ${otp1Controller.text}');
          print('Phone Number: ${otp2Controller.text}');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        text: 'NEXT',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
