import 'package:get/get.dart';

class Stepcontroller  extends GetxController{

var selectedStep = 'Business Objective & Activities'.obs;

  void updateStep(String step) {
    selectedStep.value = step; // Update the selected step
  }
}