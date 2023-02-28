import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';
import '../product/product.dart';

class AppColumn extends StatefulWidget {
  final String title;
  final double price;
  const AppColumn({super.key, this.product, required this.title, required this.price});

  final Product? product;

  @override
  State<AppColumn> createState() => _AppColumnState();
}

class _AppColumnState extends State<AppColumn> {
  int itemCount = 1;
  void _incrementCounter() {
    setState(() {
      itemCount++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      itemCount > 1 ? itemCount-- : itemCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isChange = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.w400,
                fontSize: ButtonHeights.height25,
              ),
        ),
        Padding(
          padding: PaddingItems.onlyTop15,
          child: Row(
            children: [
              Container(
                width: ButtonHeights.hw120,
                padding: PaddingItems.all5,
                decoration: BoxDecoration(
                  color: AllColors.cerebralGrey,
                  borderRadius: BorderRadius.circular(ButtonHeights.customSizedBox_10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    quantityIcon(
                        onTap: _decreaseCounter, color: AllColors.chefsWhite, iconName: 'assets/png/minus.png'),
                    Text(
                      itemCount.toString(),
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontWeight: FontWeight.bold,
                            fontSize: ButtonHeights.height20,
                          ),
                    ),
                    quantityIcon(
                        onTap: _incrementCounter, color: AllColors.chefsWhite, iconName: 'assets/png/plus.png'),
                  ],
                ),
              ),
              SizedBox(
                width: ButtonHeights.hw150,
              ),
              Text(
                ('\$${widget.price}'),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget quantityIcon({
  required VoidCallback onTap,
  required Color color,
  required String iconName,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        width: ButtonHeights.height30,
        height: ButtonHeights.height30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(ButtonHeights.customSizedBox_10),
          shape: BoxShape.rectangle,
        ),
        child: Image.asset(iconName)),
  );
}
