import 'package:flutter/material.dart';
import 'package:globalbiz/controller/appBarController.dart';
import 'package:globalbiz/controller/stepController.dart';
import 'package:globalbiz/pages/bussiness_objective/nature.dart';
import 'package:globalbiz/pages/facilities_required/facility_require.dart';
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
    'Required Documents',
    'Summary & Payment'
  ];

  @override
  Widget build(BuildContext context) {
    Stepcontroller stepController = Get.put(Stepcontroller());
    Appbarcontroller controller = Get.put(Appbarcontroller());

    // Initialize the selected step if not done already
    if (stepController.selectedStep.value.isEmpty) {
      stepController.updateStep(options[0]); // Default to the first option
    }

    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ExpansionTile for Business Objectives
            ExpansionTile(
              title: Obx(() => Container(
                child: Row(
                  
                  children: [
                    Image.asset('asset/loading.png',height: 24,width: 24,),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text(
                        stepController.selectedStep.value, // Title for the ExpansionTile
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              )),
              children: options.map((option) {
                return ListTile(
                  title: Text(option),
                  onTap: () {
                    // Update the selected step in the controller
                    stepController.updateStep(option);
                    // You can add additional navigation logic here if needed
                  },
                );
              }).toList(),
            ),
            // Show the corresponding page based on the selected step
            Obx(() {
              if (stepController.selectedStep.value == 'Business objective & Activities') {
                return Expanded(child: Nature()); // Use Expanded to fill space
              } else if (stepController.selectedStep.value == 'Facilities required') {
                return Expanded(child: FacilityRequire()); // Use Expanded to fill space
              }
              // Add conditions for other steps if needed
              return SizedBox.shrink(); // Placeholder if no page is shown
            }),
          ],
        ),
      ),
    );
  }
} 