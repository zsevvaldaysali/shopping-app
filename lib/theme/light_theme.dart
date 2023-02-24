import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LightTheme {
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(

            //  shape:const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(40, 100))),
            //titleTextStyle: TextStyle(fontSize: 20, color: AllColors.black),
            backgroundColor: AllColors.whiteWithOpacity),
        textTheme: TextTheme(
          bodyMedium:
              TextStyle(fontSize: 15.5, color: AllColors.lightGrey, fontWeight: FontWeight.normal, letterSpacing: 0.1),
          displayMedium:
              TextStyle(fontSize: 30, color: AllColors.black, fontWeight: FontWeight.bold, letterSpacing: 0.1),
          titleMedium:
              TextStyle(fontSize: 25, color: AllColors.black, fontWeight: FontWeight.normal, letterSpacing: 0.1),
          titleSmall: TextStyle(
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
              color: AllColors.black,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.1),
          labelMedium: TextStyle(
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
              color: AllColors.lightGrey,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.1),
          labelSmall: TextStyle(
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
              color: AllColors.grey,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.1),
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
            onPrimary: AllColors.iceClimber,
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(AllColors.miyazaki),
        ),
        scaffoldBackgroundColor: AllColors.whiteWithOpacity,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Color(0xfdde215c)),
        /*textTheme:
            ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(fontSize: 20, color: AllColors.carmoisine)),*/
        colorScheme: const ColorScheme.light());
  }
}
