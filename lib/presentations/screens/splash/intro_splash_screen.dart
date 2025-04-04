import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/domain/controllers/splash_controller.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class IntroSplashScreen extends StatelessWidget {
  const IntroSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.put(SplashController());
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 137, top:350),
            child: Center(
              child: MyText(
                text: Constants.logo,
                style: AppStyles.headingStyle,
              ),
            ),
          ),
          


        ],
      ),
    );
  }
}
