import 'package:flutter/material.dart';
import '../../../../../common/widgets/images/d_rounded_image.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';
import 'brand_card.dart';

class DBrandsShowcase extends StatelessWidget {
  const DBrandsShowcase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return DRoundedContainer(
    //  padding: const EdgeInsets.all(DSizes.md),
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: DColors.darkGrey,
      margin: const EdgeInsets.only(bottom:DSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with Product Count
          const DBrandCard(showBorder: false),
          const SizedBox(height: DSizes.spaceBtwItems,),

          //Brand's Top 3 Product Images
          Row(
            children:
              images.map((image)=>brandTopProductImageWidget(image, context)).toList(),

          )
        ],
      ),
    );
  }
  Widget brandTopProductImageWidget(String image, context){
    return Expanded(child: DRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(DSizes.md),
      margin: const EdgeInsets.only(right:DSizes.sm),
      backgroundColor: DHelperFunctions.isDarkmode(context)?DColors.dark:DColors.textWhite,
      child:  Image(image: AssetImage(image), fit: BoxFit.contain),
    ));
  }
}
