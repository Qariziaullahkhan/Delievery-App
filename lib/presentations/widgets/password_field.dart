import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/domain/controllers/password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPasswordField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final String? Function(String?)? validator;
  final bool isPassword;

  const MyPasswordField({
    super.key,
    this.controller,
    this.prefixIcon,
    this.hintText,
    this.keyboardType,
    this.textInputAction,
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.validator,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    // Retrieve the PasswordController
    final passwordController = Get.find<PasswordController>();

    return Obx(
      () => Container(
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
          keyboardType: keyboardType ?? TextInputType.text,
          textInputAction: textInputAction ?? TextInputAction.done,
          obscureText: isPassword ? !passwordController.isPasswordVisible.value : false,
          validator: validator,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: borderColor ?? Colors.white)
                : null,
            suffixIcon: isPassword
    ? IconButton(
        color: passwordController.isPasswordVisible.value 
            ? AppColors.secondry 
            : AppColors.primary,
        icon: Icon(
          passwordController.isPasswordVisible.value
              ? Icons.visibility
              : Icons.visibility_off,
          color: borderColor ?? Colors.white,
        ),
        onPressed: passwordController.togglePasswordVisibility,
      )
    : null,
            fillColor: fillColor ?? Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: borderColor ?? Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: borderColor ?? Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
             border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: borderColor ?? Colors.white, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
          ),
            hintText: hintText ?? "",
            hintStyle: GoogleFonts.roboto(fontSize: 14, color: textColor ?? Colors.black),
          ),
        ),
      ),
    );
  }
}