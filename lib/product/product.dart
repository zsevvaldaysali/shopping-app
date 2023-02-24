import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final double price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
    this.description =
        "Eiusmod eiusmod veniam aliqua commodo dolore aliqua fugiat officia et exercitation excepteur minim adipisicing labore. Veniam consectetur sit consectetur quis veniam reprehenderit sunt commodo quis est voluptate qui fugiat esse. Veniam Lorem quis aute voluptate laboris deserunt.",
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
