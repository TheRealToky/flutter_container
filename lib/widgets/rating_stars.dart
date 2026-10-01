import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  final int total;
  final double size;
  final MainAxisAlignment alignment;

  const RatingStars({
    super.key,
    required this.rating,
    this.total = 3,
    this.size = 20,
    this.alignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: List.generate(total, (i) {
        return Icon(
          i < rating ? Icons.star : Icons.star_border,
          color: Colors.red,
          size: size,
        );
      }),
    );
  }
}
