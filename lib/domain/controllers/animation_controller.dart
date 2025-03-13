import 'package:get/get.dart';

class AnimationController extends GetxController {
  var isPlaying = true.obs;

  void toggleAnimation() {
    isPlaying.value = !isPlaying.value;
  }
}