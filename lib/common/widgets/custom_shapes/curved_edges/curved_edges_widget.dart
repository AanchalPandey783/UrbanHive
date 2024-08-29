import 'package:flutter/cupertino.dart';

import 'curved_edges.dart';

class DCurvedEdgesWidget extends StatelessWidget {
  final Widget? child;
  const DCurvedEdgesWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DCustomCurvedEdges(),
      child: child,
    );
  }
}
