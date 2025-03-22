import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_tile.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'ps5',
      description: 'Latest model with advanced features.',
      price: 999.99,
      imageUrl: 'assets/download.jpeg',
    ),
    Product(
      title: 'XBox',
      description: 'High-performance for players.',
      price: 1299.99,
      imageUrl: 'assets/download2.jpg',
    ),
    Product(
      title: 'airpods 2',
      description: 'Noise-canceling over-ear headphones.',
      price: 199.99,
      imageUrl: 'assets/download3.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
