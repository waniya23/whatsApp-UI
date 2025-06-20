import 'package:demo_clone/screens/login/loginscreen.dart';
import 'package:demo_clone/widgets/uiHelper.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ClipOval(child: Image.asset("assets/images/bs.png",width: 220,height: 220,fit: BoxFit.cover,)),
            SizedBox(height: 20),
            uiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Color(0xFF000000),
              
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiHelper.CustomText(text: "Read out", height: 14),
                uiHelper.CustomText(text: " Privacy Policy. ", height: 14,color: Color(0xFF0C42CC)),
                uiHelper.CustomText(text: "Tap “Agree and continue”", height: 14)
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiHelper.CustomText(text: "to accept the", height: 14),
                uiHelper.CustomText(text: " Teams of Service.", height: 14,color: Color(0xFF0C42CC))
              ],
            )

          ],
        ),
      ),
      floatingActionButton: uiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> loginScreen()));
      }, buttonname: "Agree and continue"),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
