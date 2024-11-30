import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globalbiz/controller/appBarController.dart';
import 'package:globalbiz/widgets/customAppBar.dart'; // Import your CustomAppBar widget

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Appbarcontroller controller = Get.put(Appbarcontroller()); // Use the controller

    return Scaffold(
      appBar: CustomAppBar(
        onMenuItemSelected: (value) {
          if (value == 'Home') {
            controller.changePage(0);
          } else if (value == 'About Us') {
            controller.changePage(1);
          } else if (value == 'Contact Us') {
            controller.changePage(2);
          }
        },
      ),
      body: Obx(() {
        return IndexedStack(
          index: controller.index.value, // Use the reactive index
          children: controller.pages,
        );
      }),
    );
  }
}
