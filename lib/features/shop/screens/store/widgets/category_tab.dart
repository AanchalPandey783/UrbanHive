import 'package:ecommerce_platform/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_platform/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce_platform/common/widgets/texts/section_heading.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';
import 'brand_showcase.dart';

class DCategoryTab extends StatelessWidget {
  const DCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            //Brands
            const DBrandsShowcase(
              images: [DImages.sports, DImages.jewelery, DImages.gadgets],
            ),
            const DBrandsShowcase(
              images: [DImages.sports, DImages.jewelery, DImages.gadgets],
            ),
            const SizedBox(height: DSizes.spaceBtwItems,),
            //Products
            DSectionHeading(onPressed: (){}, title: 'You might like', buttonColor: DColors.dark, ),
            const SizedBox(height: DSizes.spaceBtwItems,),
            DGridLayout(itemCount: 4, itemBuilder: (_, context)=>const DProductCardVertical()),
            const SizedBox(height: DSizes.spaceBtwItems,),

          ],
        ),
      ),
      ]
    );
  }
}
