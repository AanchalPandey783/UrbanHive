import 'package:ecommerce_platform/util/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class DShadowStyles {
  static final verticalShadow = BoxShadow(
      color: DColors.darkGrey.withOpacity(0.2),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalShadow = BoxShadow(
      color: DColors.darkGrey.withOpacity(0.2),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
