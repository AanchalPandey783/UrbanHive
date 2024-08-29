import 'package:flutter/cupertino.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_functions.dart';

class DCircularImage extends StatelessWidget {
  const DCircularImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.width = 56,
    this.height = 56,
    this.padding = DSizes.sm,
  });

  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final BoxFit? fit;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: DHelperFunctions.isDarkmode(context)
            ? DColors.textWhite
            : DColors.dark,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        color: overlayColor,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        fit: fit,
      ),
    );
  }
}
