import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CRatingBarIndicator extends StatelessWidget {
  const CRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: AppColors.lighTextColor,
      itemBuilder: (_, __) => const Icon(Icons.star),
    );
  }
}
