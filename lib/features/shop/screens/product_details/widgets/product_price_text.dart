import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText(
      {super.key,
      required this.currencySign,
      required this.price,
      this.maxLines = 1,
      this.isLarge = false,
      this.lineThrough = false});

  final String currencySign, price;
  final int maxLines;
  final bool isLarge, lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(currencySign + price,
        maxLines: maxLines,
        style: isLarge
            ? Theme.of(context).textTheme.bodyLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.bodySmall!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}
