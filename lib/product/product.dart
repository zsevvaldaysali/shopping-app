import 'package:app_designs_megastore/screens/entrance_screen.dart';
import 'package:flutter/material.dart';

import '../constants/text_messages.dart';

class Product {
  final String image, title;
  final double price;
  final Color bgColor;
  String description = ProjectTextMessages.loremIpsum;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/png/polaroidmakinesi.png",
    title: "Flag Army",
    price: 12.52,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/jpg/skincareProduct1.jpg",
    title: "Skincare Product1",
    price: 99,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/jpg/skincareProduct2.jpg",
    title: "Skincare Product2",
    price: 180,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/jpg/shoes.jpg",
    title: "Shoes",
    price: 149,
    bgColor: const Color(0xFFFEFBF9),
  ),
];
