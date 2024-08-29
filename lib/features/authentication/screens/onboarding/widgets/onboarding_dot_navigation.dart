import 'package:ecommerce_platform/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_util.dart';
import '../../../../../util/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = DHelperFunctions.isDarkmode(context);
    return Positioned(
        bottom: DDeviceUtils.getBottomNavigationBarHeight(),
        left: DSizes.spaceBtwSections,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? DColors.light : DColors.dark,
              dotHeight: 10),
          onDotClicked: controller.dotNavigationClick,
        ));
  }
}
