import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final BorderSide? side;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.height,
    this.width,
    this.borderRadius,
    this.side
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.white, // Default color
        minimumSize: Size(width ?? double.infinity, height ?? 45),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          side: side ?? BorderSide.none
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontStyle: fontStyle ?? FontStyle.normal,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}