import 'package:app_designs_megastore/constants/colors.dart';
import 'package:app_designs_megastore/constants/dimensions.dart';
import 'package:flutter/material.dart';

import '../constants/text_messages.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllColors.downy.withOpacity(0.3),
      padding: PaddingItems.onlyBottom10,
      height: ButtonHeights.hw170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: MarginItems.bottom10,
            height: ButtonHeights.hw70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/png/womanProfile.png'),
              ),
            ),
          ),
          Text(
            ProjectTextMessages.subtitle,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(),
          ),
          SizedBox(
            height: ButtonHeights.hw5,
          ),
          Text(
            ProjectTextMessages.mailAdress,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(),
          ),
        ],
      ),
    );
  }
}
