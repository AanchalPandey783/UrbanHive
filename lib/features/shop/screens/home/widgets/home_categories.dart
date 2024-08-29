import 'package:flutter/cupertino.dart';
import '../../../../../common/widgets/texts/vertical_image_text.dart';
import '../../../../../util/constants/colors.dart';

class DHomeCategories extends StatelessWidget {
  const DHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return DVerticalImageText(
              image: 'assets/icons/categories/diamond-ring.png',
              title: 'Category-1',
              textColor: DColors.textWhite,
              backGroundColor: DColors.textWhite,
              onTap: () {},
            );
          }),
    );
  }
}