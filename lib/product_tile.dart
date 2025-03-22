import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({required this.product, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.imageUrl, width: 80, height: 80, fit: BoxFit.cover),
      title: Text(product.title),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      onTap: onTap,
    );
  }
}
