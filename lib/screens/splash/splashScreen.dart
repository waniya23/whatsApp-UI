import 'dart:async';

import 'package:demo_clone/screens/onboarding/onBoardingScreen.dart';
import 'package:demo_clone/widgets/uiHelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
   return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
        (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoardingScreen()));   //used replacment  ta ke back krne pe direct app se bahir ajai..wapis splash screen pe na jai
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/watsapp.png",
              width: 95,
              height: 95,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            uiHelper.CustomText(
              text: "whatsApp",
              height: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
