import 'package:app_designs_megastore/constants/colors.dart';
import 'package:app_designs_megastore/constants/text_messages.dart';
import 'package:app_designs_megastore/theme/light_theme.dart';
import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AllColors.black),
      ),
      body: Center(
        child: Text(
          ProjectTextMessages.settingsScreen,
          style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.height20),
        ),
      ),
    );
  }
}
