import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_functions.dart';

class DCircularIcon extends StatelessWidget {
  final double? height, width, size;
  final IconData icon;
  final Color? iconColor,backgroundColor;
  final VoidCallback? onPressed;

  const DCircularIcon({
    super.key, this.height, this.width, this.size = DSizes.lg, required this.icon, this.iconColor, this.backgroundColor, this.onPressed,
  });



  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor!=null? backgroundColor!:dark? DColors.darkGrey.withOpacity(0.7):DColors.textWhite.withOpacity(0.7)
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: iconColor, size: size,)),
    );
  }
}