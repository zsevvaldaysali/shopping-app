// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../details/details_body.dart';

class PaddingItems {
  static EdgeInsets all = const EdgeInsets.all(15.0);
  static EdgeInsets onlyRight10 = const EdgeInsets.only(right: 10);
  static EdgeInsets onlyRight15 = const EdgeInsets.only(right: 15);
  static EdgeInsets onlyBottom15 = const EdgeInsets.only(bottom: 15);
  static EdgeInsets onlyTop15 = const EdgeInsets.only(top: 15);
  static EdgeInsets onlyLeft5 = const EdgeInsets.only(left: 5);
  static EdgeInsets onlyLeft10 = const EdgeInsets.only(left: 10);
  static EdgeInsets onlyLeft20 = const EdgeInsets.only(left: 20);
  static EdgeInsets onlyLeft150 = const EdgeInsets.only(left: 150);
  static EdgeInsets symmet = const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0);

  static EdgeInsets symHorizontal = const EdgeInsets.symmetric(horizontal: 10.0);
  static EdgeInsets right20Top10Left20 = const EdgeInsets.only(top: 10, right: 20, left: 20);
  static EdgeInsets rtl_1 = const EdgeInsets.only(top: 380, right: 30, left: 30);
}

class MarginItems {
  static EdgeInsets forBottom = const EdgeInsets.only(bottom: 10, right: 10);
  static EdgeInsets top10 = const EdgeInsets.only(top: 8);
  static EdgeInsets right10Top8 = const EdgeInsets.only(top: 8, right: 10);
  static EdgeInsets right5Left5 = const EdgeInsets.only(top: 5, left: 5);
  static EdgeInsets right10Top10Left10 = const EdgeInsets.only(top: 8, right: 10, left: 10);
}

class ButtonHeights extends DetailsPageBody {
//707.4285714285714
//411.42857142857144
  const ButtonHeights({
    super.key,
    required this.sayfaHeight,
  });
  final double sayfaHeight;

  

  static double iconTop0_04 = 30 / 707.4285714285714;
  static double iconLeft0_03 = 20 / 707.4285714285714;
  static double iconRight0_07 = 5 / 707.4285714285714;

  static double containerTop0_53 = 380 / 707.4285714285714;

  static double customSizedBox_10 = 10 / 707.4285714285714;
  static double customSizedBox_15 = 15 / 707.4285714285714;
  static double customPadding_20 = 20 / 707.4285714285714;

  static double sizedBoxHeight = 5.0;
  static double defaultSpace = 10.0;
  static double radius12 = 12.0;
  static double width15 = 15.0;
  static double height20 = 20.0;
  static double height25 = 25.0;
  static double height30 = 30.0;
  static double height35 = 35.0;
  static double radius30 = 20.0;
  static double radius50 = 50.0;
  static double radius80 = 80.0;
  static double hw60 = 5.0;
  static double hw90 = 90.0;
  static double hw100 = 100.0;
  static double hw120 = 120.0;
  static double hw150 = 150.0;
  static double forProductHeight = 250.0;
  static double forProductWidth = 150.0;
}

class IconSizes {
  static double iconSize16 = 16.0;
}
