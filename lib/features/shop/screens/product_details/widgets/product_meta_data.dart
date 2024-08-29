import 'package:ecommerce_platform/common/widgets/images/d_circular_image.dart';
import 'package:ecommerce_platform/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce_platform/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_platform/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_platform/util/constants/enums.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/d_rounded_image.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';

class DProductMetaData extends StatelessWidget {
  const DProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = DHelperFunctions.isDarkmode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price & Sale Price
        Row(
          children: [

            //Sale tag
            DRoundedContainer(
              height: DSizes.defaultSpace * 1.3,
              width: DSizes.defaultSpace * 1.8,
              radius: DSizes.sm,
              backgroundColor: DColors.secondary.withOpacity(0.7),
              padding: const EdgeInsets.symmetric(
                  horizontal: DSizes.sm, vertical: DSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: DColors.darkGrey),
              ),
            ),

            //Price
            const SizedBox(
              width: DSizes.md,
            ),

            Text(
              '\$250',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: DColors.textWhite,
                  decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: DSizes.spaceBtwItems,),
            const DProductPriceText(price: '\$175', isLarge: true,)
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems/1.5,),
        //Title
        const DProductTitleText(title: 'Green Urban cart', white: true,),
        const SizedBox(height: DSizes.spaceBtwItems/1.5,),
        //Stock Status
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            const DProductTitleText(title: 'Status', white: true,),
            const SizedBox(width: DSizes.spaceBtwItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium!.apply(color: DColors.textWhite)),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems/1.5,),
      
        //Brand
        Row(
          children: [
            DCircularImage(image: DImages.darkAppLogo, width: 32, height: 32, overlayColor: darkMode?DColors.dark:DColors.textWhite,),
            const DBrandTitleText(text: 'Nike', brandTextSize: TextSize.medium, color: DColors.textWhite, ),
          ],
        )
        
      ],
      
    );
  }
}
