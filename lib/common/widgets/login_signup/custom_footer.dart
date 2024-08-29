import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
import '../../../util/constants/sizes.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: DColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: DSizes.iconMd,
                  height: DSizes.iconMd,
                  image: AssetImage(DImages.google))),
        ),
        const SizedBox(
          width: DSizes.spaceBtwSections,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: DColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: DSizes.iconMd,
                  height: DSizes.iconMd,
                  image: AssetImage(DImages.facebook))),
        ),
      ],
    );
  }
}
