import 'package:flutter/material.dart';

import '../theme/light_theme.dart';

class ProductTextField extends StatelessWidget {
  const ProductTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return TextFormField(
      controller: textController,
      onTap: () {},
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: Image.asset("assets/png/paperPlane.png", fit: BoxFit.fitHeight),
        ),
        hintText: "Message",
        border: InputBorder.none,
        hintStyle: LightTheme().theme.textTheme.labelSmall,
        filled: false,
      ),
    );
  }
}
