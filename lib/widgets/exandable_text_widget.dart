import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({super.key});
  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  final String text =
      "Sit voluptate et reprehenderit sit est. Cupidatat dolore commodo enim laboris. Tempor id exercitation in dolore aute. Aliqua aliquip adipisicing cupidatat anim Lorem mollit nisi eu adipisicing dolor adipisicing consectetur aute. Labore exercitation adipisicing excepteur labore qui. Cillum proident nulla nulla mollit veniam sunt cillum veniam sint aute culpa.Labore do id enim tempor aliqua et sit sint sunt tempor voluptate. Proident non consequat sunt irure enim voluptate elit ullamco adipisicing nostrud minim et esse. Officia consectetur Lorem ullamco adipisicing. Sint enim aliquip enim in culpa. Reprehenderit enim qui ad ad enim magna sit ullamco in est excepteur in cupidatat aliqua.";

  bool hiddenText = true;
  double textHeight = ButtonHeights.hw90;
  IconData iconDown = Icons.keyboard_arrow_down_sharp;
  IconData iconUp = Icons.keyboard_arrow_up_sharp;
  @override
  void initState() {
    super.initState();
    if (text.length > textHeight) {
      firstHalf = text.substring(0, textHeight.toInt());
      secondHalf = text.substring(textHeight.toInt() + 1, text.length);
    } else {
      firstHalf = text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: ButtonHeights.defaultSpace,
      ),
      child: SizedBox(
        child: secondHalf.isEmpty
            ? Text(firstHalf)
            : Column(
                children: [
                  Text(hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          hiddenText = !hiddenText;
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            'show details ',
                            style: TextStyle(color: AllColors.miyazaki),
                          ),
                          Icon(
                            hiddenText ? iconDown : iconUp,
                            color: AllColors.miyazaki,
                          )
                        ],
                      ))
                ],
              ),
      ),
    );
  }
}
