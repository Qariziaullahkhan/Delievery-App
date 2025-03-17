
import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onCompleted;

  const OtpInput({super.key, required this.controller, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      controller: controller,
      defaultPinTheme: PinTheme(
        width: 46,
        height: 57,
        textStyle: GoogleFonts.robotoFlex(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey), // Default gray border
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 46,
        height: 48,
        textStyle: GoogleFonts.robotoFlex(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.secondry, width: 1), // Highlight active field
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 46,
        height: 57,
        textStyle: GoogleFonts.robotoFlex(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.secondry, width: 1), // Red border when filled
        ),
      ),
      onCompleted: onCompleted,
    );
  }
}
