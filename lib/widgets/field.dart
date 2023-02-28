import 'package:app_designs_megastore/constants/dimensions.dart';
import 'package:flutter/material.dart';

import '../theme/light_theme.dart';

class ProductTextField extends StatelessWidget {
  const ProductTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.customSizedBox_15),
      controller: textController,
      onTap: () {},
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: PaddingItems.symmet15,
          child: Image.asset("assets/png/paperPlane.png", fit: BoxFit.fill),
        ),
        hintText: "Message",
        border: InputBorder.none,
        hintStyle: LightTheme().theme.textTheme.labelSmall,
        filled: false,
      ),
    );
  }
}
