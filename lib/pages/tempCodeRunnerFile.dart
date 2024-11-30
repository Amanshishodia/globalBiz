import 'package:flutter/material.dart';
import 'package:globalbiz/controller/appBarController.dart';
import 'package:globalbiz/widgets/customAppBar.dart'; // Import your CustomAppBar widget
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Step1 extends StatelessWidget {
  // Define options for the business objective & activities
  final List<String> options = [
    'Business objective & Activities',
    'Facilities required',
    'Investors information',
    'Business name',
    'Required Documents ',
    'Summary & Payment'
  ];

  @override
  Widget build(BuildContext context) {
    Appbarcontroller controller = Get.put(Appbarcontroller());
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
          // Handle menu item selection
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ExpansionTile for Business Objectives
            ExpansionTile(
              title: Text(
                'Steps',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              children: options.map((option) {
                return ListTile(
                  title: Text(option),
                  onTap: () {
                   
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
