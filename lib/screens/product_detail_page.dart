import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_image.dart';
import '../widgets/rating_stars.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // The AppBar automatically shows a back button that pops to the list page.
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          ProductImage(
            product: product,
            width: double.infinity,
            height: 300,
            fontSize: 64,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(product.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 20),
                  Text('Price: ${product.price}',
                      style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 20),
                  RatingStars(
                    rating: product.rating,
                    size: 24,
                    alignment: MainAxisAlignment.end,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
