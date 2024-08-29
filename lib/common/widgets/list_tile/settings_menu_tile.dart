import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';

class DSettingsMenuTile extends StatelessWidget {
  const DSettingsMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.trailing, this.onTap});

  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: DColors.primary,),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
