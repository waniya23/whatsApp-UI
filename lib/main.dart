//import 'package:demo_clone/screens/home/homeScreen.dart';

import 'screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A884)),
        useMaterial3: false,
        fontFamily: "Regular"
      ),
      home: SplashScreen(),
    );
  }
}


