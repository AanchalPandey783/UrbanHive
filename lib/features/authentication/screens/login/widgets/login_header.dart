import 'package:flutter/material.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 100,
            image: AssetImage(
                dark ? DImages.lightAppLogo : DImages.darkAppLogo)),
        const SizedBox(
          height: DSizes.spaceBtwItems,
        ),
        Text(DTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(
          height: DSizes.sm,
        ),
        Text(
          DTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
