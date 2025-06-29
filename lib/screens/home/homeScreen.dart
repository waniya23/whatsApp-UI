import 'package:demo_clone/screens/home/calls/callScreen.dart';
import 'package:demo_clone/screens/home/camera/cameraScreen.dart';
import 'package:demo_clone/screens/home/chats/chatsScreen.dart';
import 'package:demo_clone/screens/home/status/statusScreen.dart';
import 'package:demo_clone/widgets/uiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],indicatorColor: Colors.white,),
          toolbarHeight: 100,
          backgroundColor: Color(0xFF008069),
          title: uiHelper.CustomText(text: "WhatsApp", height: 20,color: Colors.white,fontweight: FontWeight.bold),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(onPressed: (){}, icon: Image.asset("assets/images/Search.png")),
          )
        ],
        ),
         body: TabBarView(children: [
           CameraScreen(),
           ChatsScreen(),
           StatusScreen(),
           CallScreen()
         ]),
      ),
    );
  }
}