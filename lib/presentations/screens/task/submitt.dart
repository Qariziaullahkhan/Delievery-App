import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Submitt extends StatelessWidget {
  const Submitt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(text: Constants.submit, onTap: () {}),
          MySize(height: 24),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AppImages.profile),
            ),
            title: Text(
              'Adolf Benzema',
              style: AppStyles.bodyStyle7,
            ),
            subtitle: Text(
              'xyzabc@gmail.com',
              style: AppStyles.bodyStyle8,
            ),
          ),
          MySize(height: Responsive.height(0.03)),
          // budgetEstimate text
          Text(
            'Budget Estimate',
            style: AppStyles.bodyStyle9,
          ),
          MySize(
            height: Responsive.height(0.02),
          ),
          Text(
            '\$30.0',
            style: AppStyles.subheadingvalues,
          ),
          MySize(height: Responsive.height(0.03)),

          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(children: [
              MyText(
                text: "You will receive",
                style: AppStyles.bodyStyle5,
              ),
              Spacer(),
              MyText(
                text: "\$20.99",
                style: AppStyles.bodyStye2,
              ),
            ]),
          ),
          //pickuplocation

          MySize(height: Responsive.height(0.03)),
          // row wise and two text
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(children: [
              MyText(
                text: "Service Fee",
                style: AppStyles.bodyStyle5,
              ),
              Spacer(),
              MyText(
                text: "\$ 2.00",
                style: AppStyles.bodyStye2,
              ),
            ]),
          ),
          MySize(
            height: Responsive.height(0.1),
          ),
          SizedBox(
            child: MyButton(
                width: Responsive.width(0.5),
                height: Responsive.height(0.07),
                borderRadius: BorderRadius.circular(10),
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Get.dialog(_buildPopupContainer());
                },
                text: Constants.submittoffer),
          )
        ],
      ),
    );
  }
}
Widget _buildPopupContainer() {
  return Material(
    color: Colors.transparent,
    child: Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 110),
      width: Responsive.width(0.3),
      height: Responsive.height(0.1),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ... [Keep all your existing widgets] ...
          
          // Modified Button with GetX dialog
          Center(
            child: MyButton(
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 60,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Your offer is submitted successfully",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: MyButton(
                            onPressed: () => Get.back(), // Close dialog
                            backgroundColor: AppColors.primary,
                            text: "Okay",
                          ),
                        ),
                      ],
                    ),
                  ),
                  barrierDismissible: false, // User must tap Okay
                );
              },
              width: Responsive.width(0.5),
              height: Responsive.height(0.07),
              backgroundColor: AppColors.primary,
              text: Constants.continues,
            ),
          ),
        ],
      ),
    ),
  );
}