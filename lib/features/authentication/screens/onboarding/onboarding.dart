import 'package:ecommerce_platform/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ecommerce_platform/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_platform/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_platform/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_platform/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_platform/util/constants/image_strings.dart';
import 'package:ecommerce_platform/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.put creates a new instance of Onboarding controller
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Stack(
      children: [
        //Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: DImages.onboardingImage1,
              title: DTexts.onBoardingTitle1,
              subtitle: DTexts.onBoardingSubtitle1,
            ),
            OnBoardingPage(
              image: DImages.onboardingImage2,
              title: DTexts.onBoardingTitle2,
              subtitle: DTexts.onBoardingSubtitle2,
            ),
            OnBoardingPage(
              image: DImages.onboardingImage3,
              title: DTexts.onBoardingTitle3,
              subtitle: DTexts.onBoardingSubtitle3,
            ),
          ],
        ),

        //Skip Button
        const OnBoardingSkip(),

        //Dot Indicator
        const OnBoardingDotNavigation(),

        //Circular Button
        const OnBoardingNextButton()
      ],
    ));
  }
}
