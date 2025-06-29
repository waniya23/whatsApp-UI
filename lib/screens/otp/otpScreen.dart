import 'package:demo_clone/screens/profile/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:demo_clone/widgets/uiHelper.dart';

class OTPScreen extends StatelessWidget {
  TextEditingController otp1=TextEditingController();
  TextEditingController otp2=TextEditingController();
  TextEditingController otp3=TextEditingController();
  TextEditingController otp4=TextEditingController();
  TextEditingController otp5=TextEditingController();
  TextEditingController otp6=TextEditingController();
  String phonenumber;
  OTPScreen({super.key, required this.phonenumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: uiHelper.CustomText(
              text: "Verifying your number",
              height: 23,
              color: Color(0xFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          uiHelper.CustomText(
            text: "You’ve tried to register +92$phonenumber",
            height: 16,
          ),
          uiHelper.CustomText(
            text: "recently. Wait before requesting an sms or a call.",
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              uiHelper.CustomText(text: " with your code.", height: 16),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: uiHelper.CustomText(
                  text: " Wrong number?",
                  height: 17,
                  color: Color(0xFF00A884),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              uiHelper.CustomContainor(otp1),
              SizedBox(width:  7,),
              uiHelper.CustomContainor(otp2),
              SizedBox( width:7,),
              uiHelper.CustomContainor(otp3),
              SizedBox(width:7,),
              uiHelper.CustomContainor(otp4),
              SizedBox(width: 7,),
              uiHelper.CustomContainor(otp5),
              SizedBox(width: 7,),
              uiHelper.CustomContainor(otp6),
            ],
          ),
          SizedBox(height: 30,),
          uiHelper.CustomText(text: "Didn’t receive code?", height: 16,color: Color(0xFF00A884))
          
          
        ],
      ),
      floatingActionButton: uiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
