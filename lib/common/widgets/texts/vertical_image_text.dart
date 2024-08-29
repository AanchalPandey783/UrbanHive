import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';

class DVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;
  const DVerticalImageText({
    super.key, required this.image,
    required this.title,
    this.textColor = DColors.textWhite,
    this.backGroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: DSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(DSizes.sm),
              decoration: BoxDecoration(
                color: backGroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: DSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                height: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}