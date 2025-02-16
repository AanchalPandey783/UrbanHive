import 'package:ecommerce_platform/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce_platform/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,

      theme: DAppTheme.lightTheme,

      darkTheme: DAppTheme.darkTheme,

      home: const OnboardingScreen()
    );
  }
}