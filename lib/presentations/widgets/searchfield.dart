import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final Color fillColor;
  final Color borderColor;
  final Color textColor;
  final String hintText;
  final Color? searchcolor;
  final VoidCallback? onTap;

  const SearchField({
    super.key,
    required this.controller,
    required this.fillColor,
    required this.borderColor,
    required this.textColor,
    required this.hintText,
    this.searchcolor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 44,
        width: 53,
        decoration: BoxDecoration(
                color: searchcolor ?? AppColors.searchcolor, // Gray border color instead of white
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: searchcolor ?? AppColors.searchcolor, // Gray border color instead of white
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: searchcolor ?? AppColors.searchcolor, // Gray border color instead of white
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: searchcolor ?? AppColors.searchcolor, // Gray border color instead of white
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.secondry,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              color: Color(0xFFF6F5F8),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: TextStyle(color: textColor),
          onTap: onTap,
        ),
      ),
    );
  }
}
