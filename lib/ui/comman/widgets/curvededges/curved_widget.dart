import 'package:flutter/material.dart';

import 'package:capjewel/ui/comman/widgets/curvededges/curved_edges.dart';

class CurvedEdges extends StatelessWidget {
  const CurvedEdges({
    super.key,
    required this.child,
  });

  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
