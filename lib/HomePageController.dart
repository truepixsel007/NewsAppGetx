import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Controller/BotthomNavigationController.dart';

class Homepagecontroller extends StatelessWidget {
  const Homepagecontroller({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      // floatingActionButton: MyBottomNav(),
      bottomNavigationBar: MyBottomNav(),
      body: Obx(()=> controller.pages[controller.index.value]),
    );
  }
}
