import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';

class DRatingAndShare extends StatelessWidget {
  const DRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          //Ratings
          children: [
            const Icon(Iconsax.star5,
                color: Colors.amber, size: 25),
            const SizedBox(
              width: DSizes.sm,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '4.8',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .apply(color: DColors.textWhite)),
              TextSpan(
                  text: '(186)',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .apply(color: DColors.textWhite)),
            ])),
          ],
        ),

        //Sharing Button
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.share,
              size: DSizes.iconMd,
              color: DColors.textWhite,
            ))
      ],
    );
  }
}
