import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
                text: Constants.paymentmethod, onTap: () => Get.back()),

            const SizedBox(height: 20),
            Text(
              "Card Number", // Label for the dropdown
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
            // Form Fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Username Field
                  buildTextField("Card Number", "5248 4568 4455 2121"),

                  // Date of Birth & Gender Row
                  Row(
                    children: [
                      Expanded(
                          child: buildTextField("Expiry Date", "DD/MM/YYYY")),
                      const SizedBox(width: 10),
                      Expanded(child: buildTextField("CCVV", "DD/MM/YYYY")),
                    ],
                  ),

                  // Location Field
                  buildTextField("Card Holder", "Charlie Dean"),

                  // Email Field
                  buildTextField("Postal Code", "197100"),

                  // Mobile Number Field

                  const SizedBox(height: 20),

                  // Dropdown with Label
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Location", // Label for the dropdown
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: "California, USA",
                            items: [
                              "California, USA",
                              "New York, USA",
                              "Texas, USA"
                            ]
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.secondry,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Save Button
                  SizedBox(
                    width: Responsive.width(0.4),
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.dialog(_buildPopupContainer());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        Constants.confirm,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  const MySize(
                    height: 20,
                  ),
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
          style: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.grey),
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
              borderSide: const BorderSide(
                  color: Colors.white), // White border when not focused
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Colors.white, width: 2), // White border when focused
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

Widget _buildPopupContainer() {
  return Material(
    color: Colors.transparent, // To keep the background unchanged
    child: Container(
      margin: const EdgeInsets.only(top: 358),
      width: Responsive.width(0.3), // 30% of screen width
      height: Responsive.height(0.6), // Adjust height as needed
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: Responsive.fontSize(0.05)),
            child: Align(
              alignment: Alignment.center,
              child: MyText(
                text: "Add Review",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          MySize(
              height:
                  Responsive.height(0.02)), // Space between text and text field

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "Rate",
                  style: AppStyles.bodyStyle6,
                ),
                const SizedBox(
                    height: 10), // Add some spacing between text and rating bar
                RatingBar.builder(
                  initialRating: 3, // Set initial rating
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true, // Allows half stars
                  itemCount: 5,
                  itemSize: 30, // Adjust star size
                  itemPadding: const EdgeInsets.symmetric(horizontal: 6.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: AppColors.secondry, // Star color
                  ),
                  onRatingUpdate: (rating) {
                    // Handle rating update
                  },
                ),
              ],
            ),
          ),

          MySize(height: Responsive.height(0.02)),
          // to create me large textfield 

         SizedBox(
  width: double.infinity, // Ensures full width
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center, // Center align the text
    children: [
      // "Add Comment" Text (Centered)
      MyText(
        text: "Add Comment",
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.grey,
        ),
      ),

      // Spacing
      MySize(height: Responsive.height(0.02)),

      // TextField Container
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white,
            border: Border.all(
              color: AppColors.primary,
              width: 1,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Write your review here",
              hintStyle: GoogleFonts.poppins(color: AppColors.primary),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(12), // Add padding inside TextField
            ),
            maxLines: 5,
          ),
        ),
      ),
    ],
  ),
),
          MySize(height: Responsive.height(0.05)),
          //buttons make an offer

          Center(
            child: MyButton(
              onPressed: () {
                Get.back();
              },
              width: 160,
              height: 40,
              backgroundColor: AppColors.primary,
              text: Constants.send,
            ),
          )
        ],
      ),
    ),
  );
}
