import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: dark ? DColors.darkGrey : DColors.grey,
              thickness: 0.9,
              indent: 40,
              endIndent: 5,
            )),
        Text(dividerText,
            style: Theme
                .of(context)
                .textTheme
                .bodySmall),
        Flexible(
            child: Divider(
              color: dark ? DColors.darkGrey : DColors.grey,
              thickness: 0.9,
              indent: 5,
              endIndent: 40,
            ))
      ],
    );
  }

}