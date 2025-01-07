import 'package:flutter/material.dart';

import 'package:capjewel/ui/comman/widgets/curvededges/curved_widget.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.child,
    this.color = const Color(0xFFF8F0E5),
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CurvedEdges(
      child: Container(
        color: color,
        padding: const EdgeInsets.all(0),
        child: child,
      ),
    );
  }
}
