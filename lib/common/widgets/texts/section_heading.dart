import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';

class DSectionHeading extends StatelessWidget {
  const DSectionHeading({
    super.key,
    required this.onPressed,
    this.buttonText = "View all", this.showActionButton= true, required this.title, this.textColor,  this.buttonColor=DColors.textWhite,
  });
  final Color? textColor, buttonColor;
  final String title, buttonText;
  final bool showActionButton ;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: DSizes.defaultSpace/2),
          child: Text(title,
              style: Theme.of(context).textTheme.titleLarge!.apply(color:textColor) , maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
        if(showActionButton) TextButton(
          onPressed: onPressed,
          child: Text(buttonText,
              style: Theme.of(context).textTheme.headlineSmall !.apply(color:buttonColor)),
        ),

      ],
    );
  }
}