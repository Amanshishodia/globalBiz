import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globalbiz/pages/aboutUs.dart';
import 'package:globalbiz/pages/contactUs.dart';
import 'package:globalbiz/pages/homePage.dart';

class Appbarcontroller extends GetxController {
  RxInt index = 0.obs;

  // List of pages to switch between
  final List<Widget> pages = [
    Homepage(),
    Aboutus(),
    Contactus(),
  ];

  // Function to change the index
  void changePage(int newIndex) {
    index.value = newIndex; // Update the index
  }
}
