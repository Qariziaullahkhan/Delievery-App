
import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/screens/setting/about.dart';
import 'package:delievery_app/presentations/screens/setting/edit_profile.dart';
import 'package:delievery_app/presentations/screens/setting/payment.dart';
import 'package:delievery_app/presentations/screens/setting/privacy.dart';
import 'package:delievery_app/presentations/screens/setting/terms.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_container.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         CustomAppbar(text: Constants.profile, onTap: () => Get.back()),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(AppImages.profile),
              radius: 20,
            ),
            title: Text(
              "Adolf Benzema",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              "xyzabc@gmail.com",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    AppColors.secondry, // Change to your secondary color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                minimumSize: Size(40, 25),
              ),
              child: Text(
                Constants.logout,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          MySize(height: 20),
         CustomContainer(
          text: Constants.editprofile,
          onTap: (){
            Get.to(() => const EditProfile());

          },
         ),
         MySize(height: 16,),
         CustomContainer(
          text: Constants.paymentmethod,
          onTap: (){
         Get.to(()  => const PaymentScreen());
          },
         ),
         MySize(height: 16,),
           CustomContainer(
          text: Constants.privacy,
          onTap: (){
              Get.to(() => const PrivacyScreen());
          },
         ),
         MySize(height: 16,),
           CustomContainer(
          text: Constants.terms,
          onTap: (){
            Get.to(() => const TermsCondition());

          },
         ),
         MySize(height: 16,),
          CustomContainer(
          text: Constants.aboutsupport,
          onTap: (){
            Get.to(() => const AboutScreen());

          },
         ),
        ],
      ),
    );
  }
}
