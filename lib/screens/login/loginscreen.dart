import 'package:demo_clone/screens/otp/otpScreen.dart';
import 'package:demo_clone/widgets/uiHelper.dart';

import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = "Pakistan";

  List<String> countries = ["America", "Africa", "Italy", "Pakistan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: uiHelper.CustomText(
              text: "Enter your phone number",
              height: 23,
              color: Color(0xFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          uiHelper.CustomText(
            text: "WhatsApp will need to verify your phone",
            height: 17,
          ),
          uiHelper.CustomText(
            text: "number. Carrier charges may apply.",
            height: 17,
          ),
          uiHelper.CustomText(
            text: " What’s my number?",
            height: 18,
            color: Color(0xFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country.toString()),
                );
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  selectedcountry = newvalue!;
                });
              },
              value: selectedcountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+92",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7),
              SizedBox(
                width: 208,
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: uiHelper.CustomButton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter phone number!"),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPScreen(phonenumber: phonenumber,)),
      );
    }
  }
}
