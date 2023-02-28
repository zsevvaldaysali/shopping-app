// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaddingItems {
  static EdgeInsets all5 = EdgeInsets.all(ButtonHeights.hw5);
  static EdgeInsets all = EdgeInsets.all(ButtonHeights.customSizedBox_15);
  static EdgeInsets onlyRight10 = EdgeInsets.only(right: ButtonHeights.customSizedBox_10);
  static EdgeInsets onlyRight15 = EdgeInsets.only(right: ButtonHeights.customSizedBox_15);
  static EdgeInsets onlyBottom10 = EdgeInsets.only(bottom: ButtonHeights.customSizedBox_10);
  static EdgeInsets onlyTop15 = EdgeInsets.only(top: ButtonHeights.customSizedBox_15);
  static EdgeInsets onlyLeft10 = EdgeInsets.only(left: ButtonHeights.customSizedBox_10);
  static EdgeInsets onlyLeft10top5 = EdgeInsets.only(left: ButtonHeights.customSizedBox_10, top: ButtonHeights.hw5);
  static EdgeInsets onlyLeft15 = EdgeInsets.only(
    left: ButtonHeights.customSizedBox_15,
  );
  static EdgeInsets onlyLeft150 = EdgeInsets.only(left: ButtonHeights.hw150);
  static EdgeInsets symmet =
      EdgeInsets.symmetric(vertical: ButtonHeights.hw5, horizontal: ButtonHeights.customSizedBox_15);
  static EdgeInsets symmet15 =
      EdgeInsets.symmetric(vertical: ButtonHeights.customSizedBox_15, horizontal: ButtonHeights.customSizedBox_15);

  static EdgeInsets right20Top10 = EdgeInsets.only(
    right: ButtonHeights.height35,
    bottom: ButtonHeights.customSizedBox_10,
    top: ButtonHeights.customSizedBox_10,
  );
  static EdgeInsets rl15T5B10 = EdgeInsets.only(
    right: ButtonHeights.customSizedBox_15,
    left: ButtonHeights.customSizedBox_15,
    bottom: ButtonHeights.customSizedBox_10,
    top: ButtonHeights.hw5,
  );
}

class MarginItems {
  static EdgeInsets bottom10 = EdgeInsets.only(bottom: ButtonHeights.customSizedBox_10);
  static EdgeInsets top8 = EdgeInsets.only(top: ButtonHeights.hw8);
  static EdgeInsets right10Top8 = EdgeInsets.only(top: ButtonHeights.hw8, right: ButtonHeights.customSizedBox_10);
  static EdgeInsets right5Left5 = EdgeInsets.only(top: ButtonHeights.hw5, left: ButtonHeights.hw5);
  static EdgeInsets symmet25 = EdgeInsets.symmetric(vertical: ButtonHeights.height25);
}

class ButtonHeights {
//static double screenHeight = Get.context?.height ?? 707,4285714285714;
  static double screenHeight = Get.context!.height;
  static double containerTop380 = screenHeight / 1.861654135338;

  static double hw5 = screenHeight / 141.48571428571428;
  static double hw8 = screenHeight / 88.428571428571425;

  static double customSizedBox_10 = screenHeight / 70.74285714285714;
  static double radius12 = screenHeight / 58.95238095238095;
  static double customSizedBox_15 = screenHeight / 47.16190476190476;
  static double iconSize16 = screenHeight / 44.2142857142857125;
  static double height20 = screenHeight / 35.37142857142857;
  static double height25 = screenHeight / 28.297142857142856;
  static double height30 = screenHeight / 23.58095238095238;
  static double height35 = screenHeight / 20.2122448979591829;
  static double size40 = screenHeight / 17.685714285714285;
  static double radius50 = screenHeight / 14.148571428571428;
  static double hw55 = screenHeight / 12.86233766233766;
  static double hw60 = screenHeight / 11.79047619047619;
  static double hw70 = screenHeight / 10.10612244897959;
  static double radius80 = screenHeight / 8.8428571428571425;
  static double hw90 = screenHeight / 7.86031746031746;
  static double hw100 = screenHeight / 7.074285714285714;
  static double hw120 = screenHeight / 5.895238095238095;
  static double hw130 = screenHeight / 5.441758241758;
  static double hw150 = screenHeight / 4.716190476190476;
  static double hw170 = screenHeight / 4.161344537815;
  static double hw200 = screenHeight / 3.537142857142857;
  static double forProductHeight = screenHeight / 2.8297142857142856;
}
