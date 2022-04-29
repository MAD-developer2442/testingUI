import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:testingui/Home_Page.dart';
import 'package:testingui/modules-designs/Valorant/Games.dart';
import 'package:testingui/modules-designs/Valorant/Intro-Page.dart';
import 'package:testingui/modules-designs/Valorant/Valorant-Page-Design.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Ensure plugin services are initialized
  final cameras = await availableCameras(); //Get list of available cameras
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
