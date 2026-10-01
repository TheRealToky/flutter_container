import 'package:flutter/material.dart';
import '../models/product.dart';

/// Coloured box with a light label, standing in for a product image.
class ProductImage extends StatelessWidget {
  final Product product;
  final double? width;
  final double? height;
  final double fontSize;

  const ProductImage({
    super.key,
    required this.product,
    this.width,
    this.height,
    this.fontSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: product.color,
      alignment: Alignment.center,
      child: Text(
        product.imageLabel,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
