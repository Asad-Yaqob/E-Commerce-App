import 'package:flutter/material.dart';

class CustomeHeading extends StatelessWidget {
  const CustomeHeading({
    super.key,
    required this.title,
    this.color = Colors.white,  this.fontSize = 22,
  });

  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
            fontSize: fontSize,
          ),
    );
  }
}
