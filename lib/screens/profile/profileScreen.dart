import 'dart:io';

import 'package:demo_clone/screens/home/homeScreen.dart';
import 'package:demo_clone/widgets/uiHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? pickedimage;

  TextEditingController nameController = TextEditingController();

  // const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: uiHelper.CustomText(
              text: "Profile info",
              height: 23,
              color: Color(0xFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          uiHelper.CustomText(
            text: "Please provide your name and an optional",
            height: 17,
          ),
          uiHelper.CustomText(text: "profile photo", height: 17),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              _openBottom(context);
            },
            child:pickedimage==null? CircleAvatar(
              radius: 95,
              backgroundColor: Color(0xFFD9D9D9),
              child: Image.asset(
                "assets/images/camera.png",
                height: 40,
                fit: BoxFit.cover,
              ),
            ):CircleAvatar(
              radius: 95,
              backgroundImage: FileImage(pickedimage!),
            ),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 280,
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Type your name here",
                    hintStyle: TextStyle(color: Color(0xFF5E5E5E)),
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
              SizedBox(width: 5),
              Image.asset("assets/images/happy-face 1.png"),
            ],
          ),
        ],
      ),
      floatingActionButton: uiHelper.CustomButton(
        callback: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    _pickimage(ImageSource.camera);
                  }, icon: Icon(Icons.camera_alt, size: 70, color: Colors.grey),),
                 IconButton(onPressed: (){
                   _pickimage(ImageSource.gallery);
                 }, icon:  Icon(Icons.image, size: 68, color: Colors.grey),)
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickimage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(ex.toString()),backgroundColor: Color(0xFF00A884),));
    }
  }
}
