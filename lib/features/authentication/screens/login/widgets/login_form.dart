import 'package:ecommerce_platform/features/authentication/screens/forget_password/forget_password.dart';
import 'package:ecommerce_platform/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/login_signup/custom_form_field.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_strings.dart';
import '../../forget_password/reset_password.dart';
import '../../signup/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          child: Column(
            children: [
              //Email
               const CustomFormField(prefixIcon: Icon(Iconsax.message), labelText: DTexts.email,),
              const SizedBox(
                height: DSizes.spaceBtwInputFields,
              ),
              //Password
              const CustomFormField(prefixIcon: Icon(Iconsax.password_check),
                  labelText: DTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
              const SizedBox(height: DSizes.spaceBtwInputFields / 4),
              //Remember me and Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(
                        DTexts.rememberMe,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: ()=> Get.to(ForgetPasswordScreen(title: DTexts.forgetPasswordTitle, subtitle: DTexts.forgetPasswordSubtitle, prefixIcon: const Icon(Iconsax.message), labelText: DTexts.email, buttonText: DTexts.submit, onPressed: ()=> Get.off(const PasswordResetScreen()))),
                      child: Text(
                        DTexts.forgetPassword,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )),
                ],
              ),
              const SizedBox(height: DSizes.spaceBtwInputFields),
              //Sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(const NavigationMenu());
                      }, child: const Text(DTexts.signIn))),
              const SizedBox(height: DSizes.spaceBtwItems),
              //Create account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: ()=>Get.to( const SignupScreen()),
                      child: const Text(DTexts.createAccount))),
            ],
          )),
    );
  }
}

