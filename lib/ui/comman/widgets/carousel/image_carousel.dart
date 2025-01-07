import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({
    super.key,
    required this.imageUrl,
    this.isNetworkImage = false,
  });

  final String imageUrl;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.lighTextColor,
          ),
          child: Image(
            image: AssetImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
