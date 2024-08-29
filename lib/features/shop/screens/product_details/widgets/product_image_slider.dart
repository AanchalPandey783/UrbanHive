import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/images/rounded_images.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';

class DProductImageSlider extends StatelessWidget {
  const DProductImageSlider({
    super.key,
     this.dark =false,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return DCurvedEdgesWidget(
        child: Container(
           color: dark ? DColors.grey : DColors.light,
            child: Stack(
              children: [
                //Large Image
                const SizedBox(
                    height: 400,
                    child: Padding(
                      padding:
                      EdgeInsets.all(DSizes.productImageRadius * 2),
                      child: Center(
                          child: Image(image: AssetImage(DImages.sports))),
                    )),

                //Image Slider
                Positioned(
                  bottom: 30, right: 0,
                  child: SizedBox(
                      height: 80,
                      child: ListView.separated(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        separatorBuilder: (_, __) => const SizedBox(
                          width: DSizes.spaceBtwItems,
                        ),
                        itemBuilder: (_, index)
                        => DRoundedImage(
                          backgroundColor: dark
                              ? DColors.textWhite
                              : DColors.textWhite,
                          border: Border.all(color: DColors.primary),
                          padding: const EdgeInsets.all(DSizes.sm),
                          imageUrl: DImages.shoes,
                          width: 80,
                        ),
                      )),
                ),
                 const DAppbar(
                  showBackArrow: true,
                  actions: [
                    DCircularIcon(icon:
                    Iconsax.heart,  backgroundColor: Colors.transparent, iconColor: Colors.red,
                    ),

                  ],
                ),
              ],
            )));
  }
}
