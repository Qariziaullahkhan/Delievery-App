import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: Constants.terms,
        onTap: () => Get.back(),
        height: 110,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MySize(height: 24),
            SizedBox(
              width: Responsive.width(0.9),
              height: Responsive.height(0.5),
              child: Expanded(
                child: Text(
                  Constants.lorem1,
                  style: GoogleFonts.poppins(
                    fontSize: 12, // Adjust font size
                    color: AppColors.primary, // Text color
                    fontWeight: FontWeight.w600, // Font weight
                  ),
                  textAlign:
                      TextAlign.justify, // Justify text for better alignment
                ),
              ),
            ),
            MySize(
              height: 16,
            ),
            SizedBox(
              width: Responsive.width(0.9),
              height: Responsive.height(0.5),
              child: Expanded(
                child: Text(
                  Constants.lorem1,
                  style: GoogleFonts.poppins(
                    fontSize: 12, // Adjust font size
                    color: AppColors.primary, // Text color
                    fontWeight: FontWeight.w600, // Font weight
                  ),
                  textAlign:
                      TextAlign.justify, // Justify text for better alignment
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
