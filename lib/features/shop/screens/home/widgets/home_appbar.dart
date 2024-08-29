import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/text_strings.dart';

class DHomeAppBar extends StatelessWidget {
  const DHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: DColors.grey)),
          Text(DTexts.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: DColors.textWhite)),
        ],
      ),
      actions: [
        DCartCounterIcon(
          iconColor: DColors.textWhite,
          onPressed: () {},
        )
      ],
    );
  }
}
