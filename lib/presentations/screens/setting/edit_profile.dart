import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Custom AppBar
            CustomAppbar(
              text: Constants.editprofile, 
              onTap: () => Get.back(),
            ),

            const SizedBox(height: 20),

            // Profile Image Section
            Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(AppImages.profile), // Update with your image asset
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    Constants.changeimage,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.secondry,
                      fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,  // Adds underline
                          decorationColor: AppColors.secondry,

                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Form Fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Username Field
                  buildTextField("User Name", "xyzabc"),

                  // Date of Birth & Gender Row
                  Row(
                    children: [
                      Expanded(child: buildTextField("Date of Birth", "DD/MM/YYYY")),
                      const SizedBox(width: 10),
                      Expanded(child: buildTextField("Gender", "Male")),
                    ],
                  ),

                  // Location Field
                  buildTextField("Location", "California, USA"),

                  // Email Field
                  buildTextField("Email", "xyzabc@gmail.com"),

                  // Mobile Number Field
                  buildTextField("Mobile number", "+912-123123-1"),

                  const SizedBox(height: 20),

                  // Save Button
                  SizedBox(
                    width: Responsive.width(0.4),
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        Constants.save,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  MySize(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to create a text field
  Widget buildTextField(String label, String placeholder) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:  GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500,color: AppColors.grey),
        ),
        const SizedBox(height: 5),
       TextField(
  decoration: InputDecoration(
    hintText: placeholder,
    hintStyle: GoogleFonts.poppins(color: AppColors.primary),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white), // White border
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white), // White border when not focused
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white, width: 2), // White border when focused
    ),
  ),
),

        const SizedBox(height: 20),
      ],
    );
  }
}
