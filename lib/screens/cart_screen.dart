import 'package:app_designs_megastore/constants/colors.dart';
import 'package:app_designs_megastore/constants/text_messages.dart';
import 'package:app_designs_megastore/theme/light_theme.dart';
import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AllColors.black),
      ),
      body: Center(
        child: Text(ProjectTextMessages.cartScreen,
          style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.height20),
        ),
      ),
    );
  }
}
