import 'package:ecommerce_platform/util/constants/colors.dart';
import 'package:ecommerce_platform/util/device/device_util.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class DTabBar extends StatelessWidget implements PreferredSizeWidget {
  const DTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Material(
      color: dark? DColors.dark:DColors.textWhite,
      child: TabBar(tabs: tabs,
      isScrollable: true,
      indicatorColor: DColors.primary,
      labelColor: dark?DColors.textWhite:DColors.primary,
      unselectedLabelColor:DColors.grey),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
