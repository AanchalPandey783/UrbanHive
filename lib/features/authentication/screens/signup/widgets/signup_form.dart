import 'package:ecommerce_platform/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce_platform/features/authentication/screens/verification/email_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/login_signup/custom_form_field.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          child: Column(
            children: [
              const Row(
                children: [
                  //We use Expanded only inside a row/column/flex
                  Expanded(
                      child: CustomFormField(
                          prefixIcon: Icon(Iconsax.user),
                          labelText: DTexts.firstname)),
                  SizedBox(
                    width: DSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                      child: CustomFormField(
                          prefixIcon: Icon(Iconsax.user),
                          labelText: DTexts.lastName)),
                ],
              ),
              const SizedBox(
                height: DSizes.spaceBtwInputFields,
              ),
              const CustomFormField(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: DTexts.userName),
              const SizedBox(
                height: DSizes.spaceBtwInputFields,
              ),
              const CustomFormField(
                  prefixIcon: Icon(Iconsax.message),
                  labelText: DTexts.email),
              const SizedBox(
                height: DSizes.spaceBtwInputFields,
              ),
              const CustomFormField(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: DTexts.phoneNumber),
              const SizedBox(
                height: DSizes.spaceBtwInputFields,
              ),
              const CustomFormField(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: DTexts.password),
              const SizedBox(
                height: DSizes.defaultSpace,
              ),
              TermsConditionsCheckBox(dark: dark),
              const SizedBox(height: DSizes.spaceBtwInputFields),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(const EmailVerificationScreen()),
                      child: const Text(DTexts.createAccount))),
            ],
          )),
    );
  }
}

