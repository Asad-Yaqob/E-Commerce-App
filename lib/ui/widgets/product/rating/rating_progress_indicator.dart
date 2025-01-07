import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/helpers/helper_methods.dart';
import 'package:flutter/material.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator(
      {super.key, required this.text, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: HelperMethods.screenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: AppColors.lighTextColor,
              minHeight: 11,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
