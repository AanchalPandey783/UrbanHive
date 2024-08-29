import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/d_circular_image.dart';
import '../../../../../common/widgets/images/d_rounded_image.dart';
import '../../../../../common/widgets/texts/brand_title_with_verified_icon.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/enums.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class DBrandCard extends StatelessWidget {
  const DBrandCard({
    super.key,  this.showBorder = false, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: DRoundedContainer(
        height: 70,
          showBorder: showBorder,
        padding: const EdgeInsets.symmetric(horizontal: DSizes.md),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icons
            Flexible(
              child: DCircularImage(
                image: DImages.darkAppLogo,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                DHelperFunctions.isDarkmode(context)
                    ? DColors.dark
                    : DColors.textWhite,
              ),
            ),
            const SizedBox(
              width: DSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const DBrandTitleWithVerification(
                    text: 'Nike',
                    brandTextSize: TextSize.medium,
                  ),
                  Text(
                    'Newest Collection',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge,
                  )
                ],
              ),
            )
            //Text
          ],
        ),
      ),
    );
  }
}
