import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/domain/controllers/splash_controller.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.find<SplashController>();

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background Image
          Positioned(
            bottom: 0, // Moves image to the bottom
            left: -73,
            right: 0,
            top: 650,
            child: Image.asset(
              'assets/images/bgimage.png', // Background Image
              fit: BoxFit.cover,
              width: double.infinity,
              height: 232, // Adjust the height as needed
            ),
          ),

          /// Foreground Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Animation
              Padding(
                padding: const EdgeInsets.only(top: 10), //95
                child: SizedBox(
                  width: double.infinity,
                  child: Obx(() {
                    return Lottie.asset(
                      'assets/animations/Animation.json',
                      fit: BoxFit.contain,
                      animate: splashController.isAnimationPlaying.value, // Access the value
                      onLoaded: (composition) {
                        // Optionally, handle animation completion or setup
                      },
                    );
                  }),
                ),
              ),
              MySize(
                height: Responsive.height(0.04),
              ), //80

              /// Rich Text Heading
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: Constants.deliveredby,
                      style: AppStyles.subheadingStyle1,
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 10), // Adds spacing between texts
                    ),
                    TextSpan(
                      text: Constants.verifieduser,
                      style: AppStyles.subheadingvalues,
                    ),
                  ],
                ),
              ),

              MySize(
                height: Responsive.height(0.02),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16), // Left & right padding
                child: SizedBox(
                  width: double.infinity,
                  height: Responsive.height(0.2),
                  child: MyText(
                    text: Constants.lorem,
                    textAlign: TextAlign.center,
                    style: AppStyles.subheadingstylelorem,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}