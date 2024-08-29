import 'package:ecommerce_platform/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_platform/util/constants/text_strings.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/login_signup/custom_divider.dart';
import '../../../../common/widgets/login_signup/custom_footer.dart';
import '../../../../util/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Signup Title
            Text(
              DTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),
            //Signup Form
            SignupForm(dark: dark),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),
            //Signup Divider
            const CustomDivider(dividerText: DTexts.orSignUpWith),
            const SizedBox(height: DSizes.spaceBtwSections),
            //Signup Footer
            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}

