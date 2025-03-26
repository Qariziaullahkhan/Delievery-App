import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final double? width;
  final double? height;
  final int? maxLines;

  const LabeledTextField({
    super.key,
    required this.label,
    required this.placeholder,
    this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.textInputAction,
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.suffixIcon,
    this.validator,
    this.width,
    this.height,
    this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: width,
          height: height,
          child: MyTextField(
            controller: controller,
            prefixIcon: prefixIcon,
            hintText: placeholder,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            fillColor: fillColor ?? Colors.white,
            borderColor: borderColor ?? Colors.white,
            textColor: textColor ?? AppColors.primary,
            suffixIcon: suffixIcon,
            validator: validator,
            maxLines: maxLines,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}