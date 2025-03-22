import 'dart:ui';

import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? text; // Make text optional
  final VoidCallback? onTap; // Optional callback for tap event

  const CustomContainer({
    super.key,
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12), // Rounded corners for blur effect
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Apply blur effect
        child: GestureDetector(
          onTap: onTap, // Add tap functionality if needed
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: 53,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2), // Transparent effect
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.01), // Shadow color
                  blurRadius: 20, // Blur intensity
                  spreadRadius: 0, // Shadow spread
                  offset: Offset(-4, 5), // Shadow position (x, y)
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (text != null) // Render text only if provided
                    MyText(
                      text: text!,
                      style: AppStyles.bodyStyle7,
                    ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.secondry,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}