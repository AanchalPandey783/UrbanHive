import 'package:flutter/material.dart';

class DColors {
  DColors._();
  //App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.807, -0.807),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffaf0f9),
      ]);

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color(0xFF6F6F6F);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0x0ff3f5ff);

  //Background Container Colors
  static const Color lightContainer = Color(0x000000ff);
  static const darkContainer = DColors.textWhite;

  //Error and Validation Colors
  static const Color error = Color(0xFF6F6F6F);
  static const Color success = Color(0xFF272727);
  static const Color warning = Color(0x0ff3f5ff);
  static const Color info = Color(0x0ff3f5ff);

  //Gradient Colors

  //Border Colors
  static const Color borderPrimary = Color(0x0ff3f5ff);
  static const Color borderSecondary = Color(0x0ff3f5ff);

  //Buttons Colors
  static const Color buttonPrimary = Color(0xFF6F6F6F);
  static const Color buttonSecondary = Color(0xFF272727);
  static const Color buttonDisabled = Color(0x0ff3f5ff);

  static const Color darkGrey = Color(0xFF333333);
  static const Color grey = Color(0xFFCCCCCC);
}
