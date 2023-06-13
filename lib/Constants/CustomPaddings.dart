// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomPaddings {
  // Horizontal padding functions
  static EdgeInsets horizontalPadding(double value) =>
      EdgeInsets.symmetric(horizontal: value);
  static EdgeInsets verticalPadding(double value) =>
      EdgeInsets.symmetric(vertical: value);

  // Padding all
  static const EdgeInsets smallPadding = EdgeInsets.all(8);
  static const EdgeInsets mediumPadding = EdgeInsets.all(16);
  static const EdgeInsets largePadding = EdgeInsets.all(32);
}
