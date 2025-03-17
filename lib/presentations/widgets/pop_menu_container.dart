import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/screens/auth/login_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PopupMenuContainer extends StatelessWidget {
  const PopupMenuContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 150,
          left: -15,
          child: Container(
            width: 358,
            height: 226,
            padding: const EdgeInsets.only(right: 47),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
             
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               Image.asset("assets/images/email.png",
               width: 78,
               ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "A reset link has been emailed to you. Please also check your spam!",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                MySize(height: Responsive.height(0.02)),
                MyButton(
                  width: Responsive.width(0.35),
                  height: 40,
                  backgroundColor: AppColors.primary,
                  onPressed: (){
                    Get.to(() => const LoginScreen());
                  }, text: Constants.okay)
               
              
              ],
            ),
          ),
        ),
      ],
    );
  }
}
