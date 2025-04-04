import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/home/home_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:delievery_app/presentations/widgets/label_textfield.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: Constants.post,
         onTap: () => Get.offAll(() => HomeScreen()),

        height: 110,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              MySize(height: 36),
              LabeledTextField(label: "Title", placeholder: "Add Title"),
              MySize(height: Responsive.height(0.01)),
              Card(
                elevation: 8,
                color: Colors.white, // Set full card color to white
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
                child: Container(
                  height: 150, // Adjust height as needed
                  padding: EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8), // Padding for spacing
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Add task details',
                      hintStyle: GoogleFonts.poppins(
                          color: AppColors.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Same as Card for consistency
                        borderSide: BorderSide.none, // Remove border
                      ),
                      contentPadding: EdgeInsets.all(16), // Adjust padding
                      filled: true,
                      fillColor:
                          Colors.white, // Keep text field background white
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a task title';
                      }
                      return null;
                    },
                    maxLines: null, // Allow multiple lines
                    keyboardType: TextInputType.multiline, // Multi-line input
                  ),
                ),
              ),
              MySize(
                height: Responsive.height(0.01),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add item details",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              ItemDetailRow(label: "Size", value: "5 inch"),
              SizedBox(height: 10),
              ItemDetailRow(label: "Quantity", value: "5"),
              SizedBox(height: 10),
              ItemDetailRow(label: "Weight", value: "5 kg"),
              MySize(
                height: Responsive.height(0.03),
              ),
              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: MyText(
                    text: "Item Pick Location",
                    style: AppStyles.bodyStyle6,
                  ),
                ),
              ),
              MySize(
                height: Responsive.height(0.01),
              ), // Space between text and text field
              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: MyTextField(
                  controller: TextEditingController(),
                  prefixIcon: Icons.location_on,
                  hintText: 'Add Address',
                  iconColor: AppColors.primary,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a date';
                    }
                    return null;
                  },
                ),
              ),
              MySize(
                height: Responsive.height(0.01),
              ),

              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: MyText(
                    text: "Item Delivery Location",
                    style: AppStyles.bodyStyle6,
                  ),
                ),
              ),
              MySize(height: 20), // Space between text and text field
              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: MyTextField(
                  controller: TextEditingController(),
                  prefixIcon: Icons.location_on,
                  hintText: 'Add Address',
                  iconColor: AppColors.secondry,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a date';
                    }
                    return null;
                  },
                ),
              ),
              MySize(
                height: Responsive.height(0.01),
              ),
              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: MyText(
                    text: "What's your budget estimate?",
                    style: AppStyles.bodyStyle6,
                  ),
                ),
              ),
              MySize(height: 20), // Space between text and text field
              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: MyTextField(
                  controller: TextEditingController(),
                  hintText: '\$00.00',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a date';
                    }
                    return null;
                  },
                ),
              ),
              MySize(
                height: Responsive.height(0.01),
              ),
              SizedBox(
                width: double.infinity, // Ensures full width if needed
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: MyText(
                    text: "Add Media",
                    style: AppStyles.bodyStyle6,
                  ),
                ),
              ),
              MySize(
                height: Responsive.height(0.01),
              ),
              Image.asset(
                "assets/images/gallery.png",
              ),
              MySize(
                height: Responsive.height(0.02),
              ),
              MyButton(
                  backgroundColor: AppColors.primary,
                  width: Responsive.width(0.5),
                  height: Responsive.height(0.06),
                  onPressed: () {},
                  text: Constants.post),
              MySize(
                height: Responsive.height(0.02),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const ItemDetailRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 147,
          height: 24,
          child: Text(
            label,
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.primary),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 62,
          height: 24,
          // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 20,
                spreadRadius: 0,
                offset: Offset(-4, 5),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              value,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
