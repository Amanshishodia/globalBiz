import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globalbiz/pages/DetailedHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/CountryController.dart';
import 'package:globalbiz/pages/step_started.dart';
import '../widgets/CustomTextButton.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final CountryController countryController = Get.put(CountryController());

  void _showCountryPicker() {
    Get.bottomSheet(
      Container(
        height: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: ListView.builder(
          itemCount: countryController.countries.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(countryController.countries[index]),
              onTap: () {
                countryController.selectCountry(countryController.countries[index]);
                Get.back();
              },
            );
          },
        ),
      ),
    );
  }

  void _handleGetStarted() {
    if (countryController.isCountrySelected.value) {
      Get.to(() => Detailedhomepage(selectedCountry: countryController.selectedCountry.value));
    } else {
      // Show a snackbar to inform user to select a country first
      Get.snackbar(
        'Selection Required',
        'Please select a country to continue',
        backgroundColor: Colors.red.shade100,
        colorText: Colors.red.shade900,
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 2),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                'The Trusted Leader For Business',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xFF1B36A0),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '#1 Online Company Setup\nServices in World',
                style: GoogleFonts.poppins(
                  fontSize: 36,
                  color: const Color(0xFF1B36A0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Image.asset('asset/homepage.png'),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: const Color(0xFF1B3A60),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Select Country ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff1B3A60),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Obx(() {
                        return TextButton(
                          onPressed: _showCountryPicker,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                countryController.selectedCountry.value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: countryController.isCountrySelected.value
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios_outlined, size: 20),
                            ],
                          ),
                        );
                      }),
                    ),
                    Obx(() => CustomTextButton(
                      text: 'Get Started',
                      backgroundColor: countryController.isCountrySelected.value
                          ? const Color(0xff1B36A0)
                          : const Color(0xff8d9caf),
                      textColor: Colors.white,
                      onPressed: _handleGetStarted,
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      ],
    ),
    ),
    );
  }
}
