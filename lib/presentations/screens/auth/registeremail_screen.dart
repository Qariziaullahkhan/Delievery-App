import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/auth/login_screen.dart';
import 'package:delievery_app/presentations/screens/auth/register_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisteremailScreen extends StatelessWidget {
  const RegisteremailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0, // Moves image to the bottom
            left: -73,
            right: 0,
            top: 650,
            child: Image.asset(
              'assets/images/bgimage.png', // Background Image
              fit: BoxFit.cover,
              height: 232, // Adjust the height as needed
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: MyText(
                    textAlign: TextAlign.center,
                    text: Constants.login,
                    style: AppStyles.subheadingstyle3,
                  ),
                ),
                MySize(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 109, right: 109),
                  child: Image.asset(
                    'assets/images/join.png',
                    width: 342,
                    height: 226,
                  
                  ),
                ),
              
                
              
                MySize(
                  height: Responsive.height(0.09),
                ),
                MyButton(
                  text: Constants.registeremail,
                  textColor: AppColors.primary,
                  backgroundColor: AppColors.white,
                  width: double.infinity,
                  side: BorderSide(color: AppColors.primary,width: 2),
                  height: 48,
                  onPressed: () {
                    Get.to(() => const RegisterScreen());
                  },
                ),
                MySize(
                  height: Responsive.height(0.35),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: Constants.alreadyhaveaccount,
                      style: AppStyles.bodyStyle,
                    ),
                    TextButton(
                      child: MyText(
                        text: Constants.signin,
                        style: AppStyles.bodyStye2,
                      ),
                      onPressed: () {
                        Get.to(() => const LoginScreen());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
