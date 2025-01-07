import 'package:flutter/material.dart';

class CutomContainer extends StatelessWidget {
  const CutomContainer({
    super.key,
    required this.width,
    required this.height,
    this.color = Colors.grey,
    required this.borderRadius,
    this.margin = const EdgeInsets.only(right: 6),
  });

  final double width;
  final double height;
  final Color color;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(color: color, borderRadius: borderRadius),
    );
  }
}
