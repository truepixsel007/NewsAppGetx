import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:news_app/Config/Theme.dart';
import 'package:news_app/Controller/BotthomNavigationController.dart';
import 'package:news_app/Demopage.dart';
import 'package:news_app/HomePageController.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      home: Homepagecontroller(),
      // home: DemoPage(),
    );
  }
}


