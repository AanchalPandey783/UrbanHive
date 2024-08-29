import 'package:ecommerce_platform/common/styles/spacing_styles.dart';
import 'package:ecommerce_platform/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_platform/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_platform/util/constants/sizes.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/custom_divider.dart';
import '../../../../common/widgets/login_signup/custom_footer.dart';
import '../../../../util/constants/text_strings.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: DSpacingStyles.paddingWithAppbBarHeight,
          child: Column(
            children: [
              //Header
              LoginHeader(dark: dark),
              const SizedBox(height: DSizes.spaceBtwSections),
              //Form
              const LoginForm(),
              const SizedBox(height: DSizes.spaceBtwSections),
              //Divider
              CustomDivider(dividerText: DTexts.orSignInWith.capitalize!,),
              const SizedBox(height: DSizes.spaceBtwSections),
              //Footer
              const CustomFooter()
            ],
          ),
        ),
      ),
    );
  }
}





