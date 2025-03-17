import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/auth/registeremail_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/presentations/widgets/pop_menu_container.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
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
                top: 400,
                child: Image.asset(
                  'assets/images/bgimage.png', // Background Image
                  height: 232, // Adjust the height as needed
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: MyText(
                          text: Constants.forgotpassword,
                          style: AppStyles.subheadingstyle3,
                        ),
                      ),
                    ),
                    MySize(height: Responsive.height(0.03)),
                    Padding(
                      padding: const EdgeInsets.only(left: 91, right: 90),
                      child: Image.asset(
                        'assets/images/forgot.png',
                        width: 208,
                      ),
                    ),
                    MySize(height: Responsive.height(0.05)),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 36),
                      child: MyText(
                        text:
                            "Not to worry, it happens to the best of us. Please enter your email address below.",
                        style: AppStyles.bodyStyle5,
                      ),
                    ),
                    MySize(height: Responsive.height(0.03)),
                    MyText(
                      text: "Email",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(height: Responsive.height(0.02)),
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text(
                         Constants.resend,
                          style: GoogleFonts.poppins(
                            color: AppColors.secondry,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.secondry,
                            decorationThickness: 2,
                          ),
                        ),
                        onPressed: () {
                          Get.to(() => const RegisteremailScreen());
                        },
                      ),
                    ),
                    Center(
                      child: MyButton(
                        text: Constants.submit,
                        backgroundColor: AppColors.primary,
                        textColor: AppColors.white,
                        width: Responsive.width(0.4),
                        height: 48,
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            // Show the popup menu container
                            Get.dialog(
                              PopupMenuContainer(),
                              barrierDismissible: false, // Prevent closing by tapping outside
                            );
                          }
                        },
                      ),
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

// Custom Popup Menu Container
