import 'package:ecommerce_platform/util/constants/colors.dart';
import 'package:flutter/material.dart';

class DProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final bool white;
  final TextAlign? textAlign;
  final int maxLines;
  const DProductTitleText({super.key, required this.title, this.smallSize=false, this.textAlign=TextAlign.left, this.maxLines=2, this.white = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize? Theme.of(context).textTheme.titleMedium : Theme.of(context).textTheme.titleLarge!.apply(color: white? DColors.textWhite: DColors.darkGrey),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
