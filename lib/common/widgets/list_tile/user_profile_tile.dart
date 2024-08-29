import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
import '../images/d_circular_image.dart';

class DUserProfileTile extends StatelessWidget {
  const DUserProfileTile({
    super.key, required this.title, required this.subTitle, required this.onPressed,
  });
  final String title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  DCircularImage(image: DImages.profile, backgroundColor: DColors.primary.withOpacity(0.6), padding: 0,),
      title: Text(title, style: Theme.of(context).textTheme.headlineMedium!.apply(color: DColors.textWhite),),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.textWhite),),
      trailing: IconButton(onPressed:onPressed, icon: const Icon(Iconsax.edit, color: DColors.textWhite,)),


    );
  }
}
