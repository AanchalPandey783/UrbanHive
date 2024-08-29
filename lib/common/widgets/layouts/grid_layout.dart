
import 'package:flutter/cupertino.dart';

import '../../../util/constants/sizes.dart';

class DGridLayout extends StatelessWidget {
   const DGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent =258, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:  const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      shrinkWrap: true,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: DSizes.gridViewSpacing,
        crossAxisSpacing: DSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
    );
  }
}