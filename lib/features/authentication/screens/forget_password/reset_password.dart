import 'package:ecommerce_platform/common/widgets/succes_screen/success_screen.dart';
import 'package:ecommerce_platform/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/constants/image_strings.dart';
import '../login/login.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountCreated(image: DImages.emailSent, title: DTexts.changePasswordTitle, subtitle: DTexts.changePasswordSubtitle, onPressed: ()=> Get.to(const LoginScreen())),
    );
  }
}
