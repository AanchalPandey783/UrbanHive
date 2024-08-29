import 'package:ecommerce_platform/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_util.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DDeviceUtils.getAppBarHeight(),
        right: DSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: Text(
              'SKIP',
              style: Theme.of(context).textTheme.titleLarge,
            )));
  }
}
