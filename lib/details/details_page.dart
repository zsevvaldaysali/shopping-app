import 'package:flutter/material.dart';

import '../product/product.dart';
import 'details_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.product});

  final Product? product;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: product?.bgColor,
        body: DetailsPageBody(
          product: product,
        ),
      ),
    );
  }
}
