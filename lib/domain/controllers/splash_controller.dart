import 'package:delievery_app/core/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // Define isAnimationPlaying as a reactive variable
  var isAnimationPlaying = true.obs;

  @override
  void onInit() {
    super.onInit();
    navigateToNextScreens();
  }

  void navigateToNextScreens() async {
    await Future.delayed(Duration(seconds: 2)); 
    Get.offNamed(AppRoutes.splash); // Navigate to Main SplashScreen

    await Future.delayed(Duration(seconds: 2)); 
    Get.offNamed(AppRoutes.login); // Navigate to Login Screen
  }
}