import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive {
  static double width(double value) {
    return Get.width * value;
  }

  static double height(double value) {
    return Get.height * value;
  }

  static double fontSize(double value) {
    return Get.width * value;
  }

  static EdgeInsets padding(double value) {
    return EdgeInsets.all(Get.width * value);
  }
}
