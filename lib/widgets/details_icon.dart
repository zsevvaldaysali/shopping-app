// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_designs_megastore/constants/dimensions.dart';
import 'package:flutter/material.dart';

import '../screens/entrance_screen.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgColor;
  final double size;

  const AppIcon({
    Key? key,
    required this.icon,
    this.iconColor = Colors.black,
    this.backgColor = Colors.white30,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(size / 2), color: backgColor),
        child: IconButton(
          icon: Icon(icon),
          color: iconColor,
          iconSize: IconSizes.iconSize16,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const EntranceScreen(),
              ),
            );
          },
        ));
  }
}
