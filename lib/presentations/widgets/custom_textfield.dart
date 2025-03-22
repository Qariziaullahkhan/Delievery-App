import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;

  const MyTextField(
      {super.key,
      this.controller,
      this.prefixIcon,
      this.hintText,
      this.keyboardType,
      this.textInputAction,
      this.fillColor,
      this.borderColor,
      this.textColor,
      this.suffixIcon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(-4, 5),
          blurRadius: 20,
          spreadRadius: 0,
          color: Color(0xFF254341).withOpacity(0.5), // Shadow color
        ),

      ]
      ),
      child: TextFormField(
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: textColor ?? Colors.black,
        ),
        controller: controller,
        validator: validator,
        keyboardType: keyboardType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: borderColor ?? AppColors.secondry)
              : null,
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, color: borderColor ?? Colors.blue)
              : null,
          fillColor: fillColor ?? Colors.grey[200],
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? Colors.blue,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? Colors.white,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? Colors.white,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText ?? "",
          hintStyle: GoogleFonts.roboto(
              fontSize: 14, color: textColor ?? Colors.black),
        ),
      ),
    );
  }
}
