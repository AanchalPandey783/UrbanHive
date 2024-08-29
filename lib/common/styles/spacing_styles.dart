import 'package:flutter/cupertino.dart';

import '../../util/constants/sizes.dart';

class DSpacingStyles{
  static const EdgeInsetsGeometry paddingWithAppbBarHeight = EdgeInsets.only(
    top: DSizes.appBarHeight,
      bottom: DSizes.defaultSpace,
      left: DSizes.defaultSpace,
      right: DSizes.defaultSpace,
  );
}