import 'package:flutter/material.dart';
import 'package:whatsapp/Screen/OTP/opt_screen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = 'Nepal';

  List<String> countries = [
    'Nepal',
    'India',
    'Bangladesh',
    'Pakistan',
    'Bhutan',
    'Sri Lanka',
    'Maldives',
    'Afghanistan',
    'Myanmar',
    'Thailand',
    'Vietnam',
    'Cambodia',
    'Laos',
    'Malaysia',
    'Singapore',
    'Indonesia',
    'Philippines',
    'Brunei',
    'Timor-Leste',
    'Mongolia',
    'Kazakhstan',
  ];
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          Center(
            child: UiHelper.CustomText(
              text: 'Enter your phone number',
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          UiHelper.CustomText(
            text: 'WhatsApp will need to verify your phone',
            height: 16,
          ),
          UiHelper.CustomText(
            text: 'WhatsApp. Carrier charges may apply',
            height: 16,
          ),
          UiHelper.CustomText(
            text: "What's your phone number?",
            height: 16,
            color: Color(0XFF00A884),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items:
                  countries.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country.toString()),
                    );
                  }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '+977',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        onPressed: () {
          // Handle the button press
          print('Phone Number: ${phoneController.text}');
          login(phoneController.text.toString());
        },
        text: 'NEXT',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    // Handle login logic here
    if (phonenumber == '') {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter a valid phone number'),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OptScreen(phonenumber: phonenumber),
        ),
      );
    }
  }
}
