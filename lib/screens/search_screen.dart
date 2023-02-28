import 'package:app_designs_megastore/constants/text_messages.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';
import '../theme/light_theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AllColors.black),
      ),
      body: Center(
        child: Text(ProjectTextMessages.searchScreen,
          style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.height20),
        ),
      ),
    );
  }
}
