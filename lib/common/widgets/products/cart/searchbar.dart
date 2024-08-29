import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';

class DSearchBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;
   const DSearchBar({
    super.key, required this.text, this.icon=Iconsax.search_favorite,  this.showBackground=true,  this.showBorder=true, required this.onTap,EdgeInsetsGeometry? padding,
   }) : padding = padding ?? const EdgeInsets.symmetric(horizontal: DSizes.md);


  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: DHelperFunctions.screenWidth(),
        height: DSizes.appBarHeight,
        padding: const EdgeInsets.symmetric(horizontal: DSizes.cardRadiusLg),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSizes.cardRadiusLg),
          border: showBorder? Border.all(color: DColors.grey) : null,
          color: showBackground? dark? DColors.dark : DColors.textWhite.withOpacity(0.8) : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: DSizes.spaceBtwItems,),
            Text(text, style: Theme.of(context).textTheme.bodyLarge,)
          ],
        ),
      ),
    );
  }
}