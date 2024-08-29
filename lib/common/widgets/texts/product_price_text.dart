import 'package:flutter/material.dart';

import '../../../util/constants/sizes.dart';

class DProductPriceText extends StatelessWidget {
   const DProductPriceText({
    super.key,
    required this.price,
     this.currencySign = '\$',
     this.maxLines = 1,
     this.isLarge = false,
     this.lineThrough = false, this.padding = DSizes.sm,
  });

  final String price, currencySign;
  final int maxLines;
  final bool isLarge, lineThrough;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:DSizes.sm),
      child: Text(
        currencySign + price, // Price text
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineSmall!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
