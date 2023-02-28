// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_designs_megastore/constants/dimensions.dart';
import 'package:flutter/material.dart';

import '../screens/entrance_screen.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgColor;

  const AppIcon({
    Key? key,
    required this.icon,
    this.iconColor = Colors.black,
    this.backgColor = Colors.white30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    double size = ButtonHeights.size40;
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(size / 2), color: backgColor),
        child: IconButton(
          icon: Icon(icon),
          color: iconColor,
          iconSize: ButtonHeights.iconSize16,
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
