import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';

class DCartCounterIcon extends StatelessWidget {
  final Color? iconColor;
  final VoidCallback onPressed;

  const DCartCounterIcon({
    super.key,
     this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        icon: const Icon(Iconsax.shopping_bag),
        color: iconColor,
        onPressed: onPressed,
      ),
      Positioned(
        right: 0,
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: DColors.dark.withOpacity(0.5)),
          child: Center(
              child: Text(
            '5',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: DColors.textWhite, fontSizeFactor: 0.8),
          )),
        ),
      )
    ]);
  }
}
