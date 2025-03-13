import 'package:delievery_app/domain/controllers/splash_controller.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 95),
        child: SizedBox(
          width: double.infinity,
          child: Obx(() {
            return Lottie.asset(
              'assets/animations/Animation.json',
              fit: BoxFit.contain,
              animate: splashController.isAnimationPlaying.value,
              onLoaded: (composition) {
                // Optionally, handle animation completion or setup
              },
            );
          }),
        ),
      ),
    );
  }
}
