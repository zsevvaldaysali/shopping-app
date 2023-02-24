import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllColors.blossoms,
      padding: const EdgeInsets.only(top: 20),
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
