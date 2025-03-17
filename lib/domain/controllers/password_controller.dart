import 'package:get/get.dart';

class PasswordController extends GetxController {
  // Reactive variable to track password visibility
  var isPasswordVisible = false.obs;

  // Method to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}