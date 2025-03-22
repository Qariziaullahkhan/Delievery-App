import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  final String text; // Required text
  final VoidCallback onTap; // Required onTap callback

  const CustomAppbar({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Responsive.height(0.2),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Profile Section
          Container(
            width: 358,
            height: 48,
            margin: const EdgeInsets.only(top: 55, left: 16, right: 16),
            child: Row(
              children: [
                // IconButton aligned to start
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Background color
                    shape: BoxShape.circle, // Makes it circular
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 18,
                      color: Colors.black, // Icon color
                    ),
                    onPressed: onTap, // Use provided onTap callback
                    padding: EdgeInsets.zero, // Removes default padding
                    constraints: BoxConstraints(), // Ensures proper alignment
                  ),
                ),

                // Centered Text
                Expanded(
                  child: Center(
                    child: Text(
                      text, // Use provided text
                      style: GoogleFonts.poppins(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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