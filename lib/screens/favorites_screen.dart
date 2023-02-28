import 'package:app_designs_megastore/constants/text_messages.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';
import '../theme/light_theme.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AllColors.black),
      ),
      body: Center(
        child: Text(
          ProjectTextMessages.favoritesScreen,
          style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.height20),
        ),
      ),
    );
  }
}
