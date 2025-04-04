import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final VoidCallback? onTap; // Made optional
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;
  final double height;
  final bool showBackButton; // New parameter to control visibility

  const CustomAppbar({
    super.key,
    required this.text,
    this.onTap,
    this.backgroundColor = AppColors.primary,
    this.iconColor = Colors.black,
    this.textColor = AppColors.white,
    this.height = kToolbarHeight,
    this.showBackButton = true, // Default to true for backward compatibility
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 358,
              height: 48,
              margin: const EdgeInsets.only(top: 12, left: 16, right: 16),
              child: Row(
                children: [
                  if (showBackButton) // Only show if enabled
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, size: 18, color: iconColor),
                        onPressed: onTap ?? () => Navigator.pop(context), // Default pop behavior
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  Expanded(
                    child: Center(
                      child: Text(
                        text,
                        style: GoogleFonts.poppins(
                          color: textColor,
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
      ),
    );
  }
}