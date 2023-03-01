import 'package:color_grading_switch/Login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:color_grading_switch/Example_switch/Myswitch.dart';
import 'package:color_grading_switch/MarkFav_App/MarkFavScreen.dart';
import 'HomeScreen.dart';
import 'ImagePickerGetx/ImagePickerHome.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      // home: ImagePickerHome(),
      // home: MarkFavScreen(),
    );
  }
}
