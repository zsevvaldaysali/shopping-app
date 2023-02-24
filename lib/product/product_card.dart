import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.bgColor,
    this.press,
    required this.width,
    required this.height,
  });

  final String image, title;
  final double price, width, height;
  final Color bgColor;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        margin: MarginItems.top10,
        decoration: BoxDecoration(
            image: DecorationImage(
              alignment: const AlignmentDirectional(-0.45, 0.5),
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            color: AllColors.lightGrey,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
