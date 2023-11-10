import 'package:flutter/material.dart';

class ScreenSize {
  static double width = 0;
  static double height = 0;

  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
