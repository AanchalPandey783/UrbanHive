import 'package:flutter/material.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/text_strings.dart';

class TermsConditionsCheckBox extends StatelessWidget {
  const TermsConditionsCheckBox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: '${DTexts.iAgreeTo} ',
            style: Theme.of(context).textTheme.bodySmall!.apply(
              color:
              dark ? DColors.textWhite : DColors.darkGrey,
            ),
          ),
          TextSpan(
            text: '${DTexts.privacyPolicy} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
              color:
              dark ? DColors.textWhite : DColors.primary,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: '${DTexts.and} ',
            style: Theme.of(context).textTheme.bodySmall!.apply(
              color:
              dark ? DColors.textWhite : DColors.darkGrey,
            ),
          ),
          TextSpan(
            text: '${DTexts.termsOfUse}.',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
              color:
              dark ? DColors.textWhite : DColors.primary,
              decoration: TextDecoration.underline,
            ),
          )
        ])),
      ],
    );
  }
}