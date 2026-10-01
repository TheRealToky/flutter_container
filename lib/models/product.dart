import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final int price;
  final int rating; // 0-3 filled stars
  final Color color;
  final String imageLabel; // text shown on the coloured "image"

  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.color,
    required this.imageLabel,
  });

  static const List<Product> sample = [
    Product(
      name: 'Pixel',
      description: 'Pixel is the most featureful phone ever',
      price: 800,
      rating: 0,
      color: Color(0xFF3F6FD8),
      imageLabel: 'pixel 1',
    ),
    Product(
      name: 'Laptop',
      description: 'Laptop is the most productive development tool',
      price: 2000,
      rating: 0,
      color: Color(0xFF3FD84F),
      imageLabel: 'laptop',
    ),
    Product(
      name: 'Tablet',
      description: 'Tablet is the most useful device ever for meeting',
      price: 1500,
      rating: 3,
      color: Color(0xFFCDBF2E),
      imageLabel: 'tablet',
    ),
    Product(
      name: 'Pendrive',
      description: 'Pendrive is the stylish storage ever',
      price: 100,
      rating: 0,
      color: Color(0xFFD8623F),
      imageLabel: 'pen drive',
    ),
    Product(
      name: 'Floppy Drive',
      description: 'Floppy drive is a useful rescue disk',
      price: 20,
      rating: 0,
      color: Color(0xFF3FBFA8),
      imageLabel: 'floppy',
    ),
  ];
}
