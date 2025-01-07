import 'package:flutter/material.dart';

class CRoundedContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CRoundedContainer({
    super.key,
    required this.child,
    this.borderRadius = 16.0,
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.all(8.0),
    this.margin = const EdgeInsets.all(0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
