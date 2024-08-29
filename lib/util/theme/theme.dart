import 'package:ecommerce_platform/util/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/outlined_button_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce_platform/util/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class DAppTheme{
  DAppTheme._();

  static ThemeData lightTheme= ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0xff72b4c7),
    scaffoldBackgroundColor: Colors.white,
    textTheme: DTextTheme.lightTextTheme,
    appBarTheme: DAppBar.lightAppBarTheme,
    chipTheme: DChipTheme.lightChipTheme,
    checkboxTheme: DCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.lighOutlinedButtonTheme,
    bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: DTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: const Color(0xff72b4c7),
      scaffoldBackgroundColor: Colors.black,
      textTheme: DTextTheme.darkTextTheme,
    appBarTheme: DAppBar.darkAppBarTheme,
    chipTheme: DChipTheme.darkChipTheme,
    checkboxTheme: DCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: DTextFieldTheme.darkInputDecorationTheme,





  );

}