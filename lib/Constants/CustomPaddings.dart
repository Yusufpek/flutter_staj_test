// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomPaddings {
  EdgeInsets horizontalPadding(double value) =>
      EdgeInsets.symmetric(horizontal: value);
  EdgeInsets verticalPadding(double value) =>
      EdgeInsets.symmetric(vertical: value);
  final EdgeInsets smallPadding = const EdgeInsets.all(8);
  final EdgeInsets mediumPadding = const EdgeInsets.all(16);
  final EdgeInsets largePadding = const EdgeInsets.all(32);
}
