import 'package:delievery_app/core/app_styles.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const MyText({
    super.key,
    required this.text,
    this.style, // Optional Style
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ?? AppStyles.bodyStyle, // Default body style
    );
  }
}
