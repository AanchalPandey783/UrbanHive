import 'package:flutter/material.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
 final String image, title, subtitle;

  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  height: DHelperFunctions.screenWidth() * 1.1,
                  width: DHelperFunctions.screenWidth() * 1.1,
                  image: AssetImage(image)),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
        //Image
      ],
    );
  }
}
