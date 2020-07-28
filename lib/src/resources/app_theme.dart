import 'package:flutter/material.dart';
import 'package:domainchecker/src/resources/app_colors.dart';
// import 'package:domainchecker/src/resources/font_family.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
        applyElevationOverlayColor: true,
        primaryColor: AppColors.primaryColor,
        cardColor: AppColors.cardWhite,
        accentColor: AppColors.primaryColor,
        dividerColor: AppColors.dividerColor,
        textTheme: TextTheme(
          caption: TextStyle(color: AppColors.darkModeBlack),
          bodyText2: TextStyle(color: AppColors.darkModeBlack),
        ),
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: AppColors.darkModeBlack),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkModeBlack),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
        ),
        navigationRailTheme: NavigationRailThemeData(),
        appBarTheme: AppBarTheme(
            color: AppColors.subtitleColor,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: AppColors.darkModeBlack),
            textTheme: TextTheme(
                headline1: TextStyle(
                    color: AppColors.darkModeBlack,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.4,
                    fontSize: 14))),
        snackBarTheme:
            SnackBarThemeData(backgroundColor: AppColors.primaryColor));
  }
}
