import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';

import '../../util/constants/sizes.dart';

class DRoundedImage extends StatelessWidget {
  final double? height, width;
  final String imageUrl;
  final bool applyImageRadius;
  final bool isNetworkImage;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;

   const DRoundedImage({
    super.key, this.height, this.width, required this.imageUrl, this.applyImageRadius=true, this.isNetworkImage=false, this.border, this.backgroundColor, this.fit = BoxFit.contain, this.padding, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: height,
          width: width ?? DHelperFunctions.screenWidth() ,
          padding: padding,
          decoration: BoxDecoration(
              border: border,
              color: backgroundColor,
              borderRadius: BorderRadius.circular(DSizes.md)),
          child: ClipRRect( borderRadius: applyImageRadius?BorderRadius.circular(DSizes.md):BorderRadius.zero,
            child: Image(image: isNetworkImage? NetworkImage(imageUrl):AssetImage(imageUrl) as ImageProvider, fit: fit,
            ),
          )
      ),
    );
  }
}