import 'package:ecommerce_platform/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_util.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Positioned(
        bottom: DDeviceUtils.getBottomNavigationBarHeight(),
        right: DSizes.spaceBtwSections,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? DColors.light : DColors.dark),
            onPressed: () => OnboardingController.instance.nextPage(),
            child: const Icon(Icons.arrow_forward_ios_sharp)));
  }
}
