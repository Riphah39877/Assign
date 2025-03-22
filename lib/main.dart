import 'package:assignment_2/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:assignment_2/screens/product_list_screen.dart'; // Ensure correct project name

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: ProductListScreen(), // Ensure this is correctly imported
    );
  }
}
