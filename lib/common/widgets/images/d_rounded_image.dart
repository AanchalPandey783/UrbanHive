import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';

class DRoundedContainer extends StatelessWidget {
  final double? height, width;
  final double radius;
  final EdgeInsets? padding;
  final Color backgroundColor, borderColor;
  final EdgeInsets? margin;
  final Widget? child;
  final bool showBorder;
  const DRoundedContainer({super.key,
    //We can assign default values here
    this.height , this.width , this.radius = 10, this.padding ,  this.backgroundColor = DColors.textWhite, this.child, this.margin,  this.showBorder=false, this.borderColor=DColors.borderPrimary});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
        border: showBorder? Border.all(color: borderColor):null
      ),
      child: child,
    );
  }
}