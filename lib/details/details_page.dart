import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../product/product.dart';
import 'details_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.product, this.screenHeight});

  final Product? product;
  final double? screenHeight;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; //707.4285714285714
    double screenWidth = MediaQuery.of(context).size.width; //411.42857142857144
    print(screenHeight);
    print(screenWidth);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: AllColors.miyazaki,
        body: DetailsPageBody(
          product: product,
        ),
      ),
    );
  }
}
