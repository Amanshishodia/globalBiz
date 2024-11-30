import 'package:get/get.dart';

class CountryController extends GetxController {
  var selectedCountry = "Select Country".obs;
var isCountrySelected = false.obs;

final List<String> countries = [
  'United States',
  'India',
  'UAE',

  // Add more countries as needed
];

void selectCountry(String country) {
  selectedCountry.value = country;
  isCountrySelected.value = true;
}
}
