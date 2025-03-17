import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/auth/login_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/my_otp.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final otpcontroller = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          /// **Background Image - Placed at the Bottom**
          Positioned(
            bottom: 0, // Moves image to the bottom
            left: -73,
            right: 0,
            top: 400,
            child: Image.asset(
              'assets/images/bgimage.png', // Background Image
              fit: BoxFit.cover,
              height: 232, // Adjust the height as needed
            ),
          ),

          /// **Foreground Content**
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// **Title - Centered**
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: MyText(
                            text: Constants.verifynumber,
                            style: AppStyles.subheadingstyle3,
                          ),
                        ),
                      ),
                      MySize(height: 20),

                      /// **Logo Centered**
                      Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 180,
                          width: 180,
                        ),
                      ),
                      MySize(height: 25),

                      /// **OTP Input Field**
                      OtpInput(
                        controller: otpcontroller,
                        onCompleted: (p0) {},
                      ),
                      MySize(height: 25),

                      /// **Verify Button**
                      Center(
                        child: MyButton(
                          width: Responsive.width(0.6),
                          height: Responsive.height(0.07),
                          borderRadius: BorderRadius.circular(10),
                          onPressed: () {
                            Get.to(() => const LoginScreen());
                          },
                          text: Constants.verifycode,
                          backgroundColor: AppColors.primary,
                          textColor: Colors.white,
                        ),
                      ),
                      MySize(height: Responsive.height(0.03)),

                      /// **Resend Code**
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(text: Constants.haventresendcoded),
                        ],
                      ),

                      MySize(height: Responsive.height(0.095)),
                     Align(
                      alignment: Alignment.center,
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
                        },
                      ),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
