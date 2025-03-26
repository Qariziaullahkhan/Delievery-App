import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/home/home_screen.dart';
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
      appBar: CustomAppbar(
        text: Constants.submit,
        onTap: () {},
        height: 110,
      ),
      body: Column(
        children: [
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
  return Dialog(
    insetPadding: EdgeInsets.only(top: Responsive.fontSize(0.1)),
    child: Container(
      padding: EdgeInsets.all(20),
      constraints: BoxConstraints(
        minHeight: Responsive.height(0.25), // Set minimum height
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // This pushes button to bottom
        children: [
          Text(
            'Your submission has been received successfully!',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20), // Optional spacing
          MyButton(
            width: Responsive.width(0.4), //responsive for width 125
            height: Responsive.height(0.05), //responsive for height 40
            backgroundColor: AppColors.primary,
            text: Constants.okay,
            onPressed: () => Get.to(() => HomeScreen()),
          ),
        ],
      ),
    ),
  );
}
