import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/auth/forgot_password_screen.dart';
import 'package:delievery_app/presentations/screens/auth/registeremail_screen.dart';
import 'package:delievery_app/presentations/screens/home/home_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/presentations/widgets/password_field.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordController = TextEditingController();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Stack(
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 50), // Adjust the top padding as needed
                        child: MyText(
                          text: Constants.login,
                          style: AppStyles.subheadingstyle3,
                        ),
                      ),
                    ),
                    MySize(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 109, right: 109),
                      child: Image.asset(
                        'assets/images/person.png',
                        height: 180,
                      ),
                    ),
                    MyText(
                      text: "Email",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyTextField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      fillColor: Colors.white,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                    ),
                    MySize(height: Responsive.height(0.02)),
                    MyText(
                      text: "Password",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyPasswordField(
                      controller: passwordController,
                      isPassword: true,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: MyText(
                          text: Constants.recoverpassword,
                          style: AppStyles.bodyStyle,
                        ),
                        onPressed: () {
                          Get.to(() => const ForgotPasswordScreen());
                        },
                      ),
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyButton(
                      text: Constants.login,
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.white,
                      width: double.infinity,
                      height: 48,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Get.to(() => const HomeScreen());
                        }
                      },
                    ),
                    MySize(
                      height: Responsive.height(0.1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: Constants.dontHaveAccount,
                          style: AppStyles.bodyStyle,
                        ),
                        TextButton(
                          child: MyText(
                            text: Constants.signin,
                            style: AppStyles.bodyStye2,
                          ),
                          onPressed: () {
                            Get.to(() => const RegisteremailScreen());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
