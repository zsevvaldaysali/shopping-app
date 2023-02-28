import 'package:app_designs_megastore/constants/text_messages.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';
import '../theme/light_theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AllColors.black),
      ),
      body: Center(
        child: Text(
          ProjectTextMessages.profileScreen,
          style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.height20),
        ),
      ),
    );
  }
}
