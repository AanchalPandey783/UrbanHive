import 'package:ecommerce_platform/util/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import 'brand_title_text.dart';

class DBrandTitleWithVerification extends StatelessWidget {
  const DBrandTitleWithVerification({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = DColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
  });

  final String text;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: DBrandTitleText(
            text: text,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: DSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: DColors.primary,
          size: DSizes.iconSm,
        ),
      ],
    );
  }
}

