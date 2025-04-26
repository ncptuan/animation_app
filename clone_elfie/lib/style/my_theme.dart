import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

class MyTheme {
  static const String fontFamily = 'Roboto';

  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme(
        secondary: MyColors.whiteColor,
        primary: MyColors.primaryColor,
        brightness: Brightness.light,
        error: MyColors.errorColor,
        onError: MyColors.errorColor,
        onPrimary: MyColors.whiteColor,
        onSecondary: MyColors.lightColor,
        onSurface: MyColors.greyColor,
        primaryContainer: MyColors.whiteColor,
        surface: MyColors.whiteColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: MyColors.blackColor.withOpacity(0.3),
      ),
      primaryColor: MyColors.primaryColor,
      dividerColor: MyColors.greyColor,
      primaryTextTheme: const TextTheme(
        displayLarge: TextStyle(
          color: MyColors.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.size36,
          fontFamily: fontFamily,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w800,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w800,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w400,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.blackColor,
          fontSize: Dimens.textSize24,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.blackColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
