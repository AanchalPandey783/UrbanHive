import 'package:ecommerce_platform/util/constants/enums.dart';
import 'package:flutter/material.dart';

class DBrandTitleText extends StatelessWidget {
  const DBrandTitleText(
      {super.key,
      required this.text,
      this.maxLines = 1,
      this.color,
      this.brandTextSize = TextSize.small, //By default we use small type of enum
      this.textAlign = TextAlign.center});

  final String text;
  final int maxLines;
  final Color? color;
  final TextSize brandTextSize; //Variable type of Enum
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSize.small? Theme.of(context).textTheme.bodyLarge!.apply(color: color): //Small -> Large
      brandTextSize == TextSize.medium?
      Theme.of(context).textTheme.titleLarge!.apply(color:color): //Medium ->Small
      brandTextSize == TextSize.large? Theme.of(context).textTheme.labelMedium!.apply(color:color): //large - > Medium
      Theme.of(context).textTheme.titleLarge!.apply(color: color),
    );
  }
}
