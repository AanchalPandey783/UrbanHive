import 'package:flutter/material.dart';

import '../../images/d_rounded_image.dart';
import '../curved_edges/curved_edges_widget.dart';
import '../../../../util/constants/colors.dart';

class DPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  final double? height;

  const DPrimaryHeaderContainer({super.key, required, required this.child,  this.height});

  @override
  Widget build(BuildContext context) {
    return DCurvedEdgesWidget(
      child: Container(
        color: DColors.primary.withOpacity(0.6),
        height: height,
        child: Stack(
          children: [
            Positioned(
              right: 100,
              child: DRoundedContainer(
                radius: 400,
                backgroundColor: Colors.red.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: -150,
              right: -250,
              child: DRoundedContainer(
                radius: 400,
                backgroundColor: Colors.red.withOpacity(0.6),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: DRoundedContainer(
                radius: 400,
                backgroundColor: Colors.red.withOpacity(0.1),
              ),
            ),
            child,


          ],
        ),
      ),
    );
  }
}
