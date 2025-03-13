import 'package:delievery_app/core/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  var isAnimationPlaying = true.obs;

  void toggleAnimation() {
    isAnimationPlaying.value = !isAnimationPlaying.value;
  }
  @override
  void onInit() {
    super.onInit();
    navigateToNextScreens();
  }

  void navigateToNextScreens() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(AppRoutes.splash); // Navigate to second splash screen

    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(AppRoutes.login); // Navigate to home screen
  }
}