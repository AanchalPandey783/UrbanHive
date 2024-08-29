import 'package:ecommerce_platform/common/images/rounded_images.dart';
import 'package:ecommerce_platform/common/styles/shadow_style.dart';
import 'package:ecommerce_platform/common/widgets/images/d_rounded_image.dart';
import 'package:ecommerce_platform/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_platform/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce_platform/util/constants/colors.dart';
import 'package:ecommerce_platform/util/constants/image_strings.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../util/constants/sizes.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/brand_title_with_verified_icon.dart';

class DProductCardVertical extends StatelessWidget {
  const DProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);

    return GestureDetector(
      onTap: ()=>Get.to(()=> const ProductDetail()),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [DShadowStyles.verticalShadow],
          borderRadius: BorderRadius.circular(DSizes.productImageRadius),
          color: dark ? DColors.darkGrey : DColors.textWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Align child widgets to start
          children: [
            DRoundedContainer(
              padding: const EdgeInsets.only(left: 30),
              height: 150,
              // Adjusted height to be more reasonable
              width: 200,
              // Use specified width
              backgroundColor: /*dark ? DColors.textWhite : DColors.darkGrey,*/Colors.transparent,
              child: Stack(
                children: [
                  // Thumbnail
                  const DRoundedImage(
                    backgroundColor: Colors.transparent,
                    height: 200,
                    width: 100,
                    imageUrl: DImages.product,
                    applyImageRadius: true,
                  ),

                  // Discount Tag
                  Positioned(
                    top: 8,
                    left: 0,
                    child: DRoundedContainer(
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
                  ),

                  // Favourite Icon Button
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: DCircularIcon(
                      icon: Iconsax.heart,
                      iconColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: DSizes.spaceBtwItems / 2,
            ),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: DSizes.sm),
              // Added right padding for better layout
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DProductTitleText(
                    title: 'Product One',
                    smallSize: true,
                  ),
                  SizedBox(height: DSizes.spaceBtwItems / 2),

                  // Cart Row
                  DBrandTitleWithVerification(text: 'Nike',),

                  SizedBox(height: DSizes.spaceBtwItems / 2),
                ],
              ),
            ),
            const Spacer(),
            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DProductPriceText(
                  price: '35.50',
                ),
                const SizedBox(width: DSizes.sm),
                // Added space between the text and container
                Container(
                  decoration: const BoxDecoration(
                    color: DColors.dark, // Dark container next to price
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(DSizes.md),
                      bottomLeft: Radius.circular(DSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: DSizes.iconLg,
                    height: DSizes.iconLg,
                    child: Center(
                      child: Icon(Iconsax.add, color: DColors.textWhite),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

