import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_image.dart';
import '../widgets/rating_stars.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Product.sample;

    return Scaffold(
      appBar: AppBar(title: const Text('Product Navigation')),
      body: ListView.builder(
        padding: const EdgeInsets.all(2),
        itemCount: products.length,
        itemBuilder: (context, index) => _ProductItem(
          product: products[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProductDetailPage(product: products[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const _ProductItem({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              Expanded(
                child: ProductImage(product: product, height: double.infinity),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        product.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 11),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text('Price: ${product.price}',
                          style: const TextStyle(fontSize: 11)),
                      const SizedBox(height: 4),
                      RatingStars(
                        rating: product.rating,
                        size: 18,
                        alignment: MainAxisAlignment.spaceEvenly,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
