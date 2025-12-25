import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color primary = Color(0xff244B3A);
  static const Color darkPrimary = Color(0xff112F22);
  static const Color secondary = Color(0xff41745E);
  static const Color grey = Color(0xffF4F4F4);
  static const Color subtitle = Color(0xff707070);
  static const Color link = Color(0xff46A0BF);
}

abstract class AppThemes {
  const AppThemes._();

  static ThemeData get light => ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        minimumSize: Size.fromHeight(50),
      ),
    ),
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) =>
          Icon(Icons.arrow_back_ios, color: AppColors.primary),
    ),
    searchBarTheme: SearchBarThemeData(
      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
    ),
    cardTheme: CardThemeData(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
