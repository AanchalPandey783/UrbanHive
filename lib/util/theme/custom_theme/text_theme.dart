import 'package:flutter/material.dart';
class DTextTheme{
  DTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge:  const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
    headlineSmall : const TextStyle().copyWith(fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black),

    titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium:const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall :const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black),

    bodyLarge:  const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black),
    bodySmall : const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.w300, color: Colors.black),

    labelLarge:  const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
    labelSmall : const TextStyle().copyWith(fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black),

  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge:  const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 26, fontWeight: FontWeight.w500, color: Colors.white),
    headlineSmall : const TextStyle().copyWith(fontSize: 19, fontWeight: FontWeight.w300, color: Colors.white),

      titleLarge:  const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
      titleSmall : const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),

      bodyLarge: const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium:const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
      bodySmall :const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.w300, color: Colors.white),

      labelLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      labelMedium:const TextStyle().copyWith(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
      labelSmall :const TextStyle().copyWith(fontSize: 19, fontWeight: FontWeight.w300, color: Colors.white),

  );
}