import 'package:flutter/material.dart';

class AppTheme {

  static const primaryColor = Color(0xFF7b61ff);
  static const greyColor = Colors.grey;
  static const blackColor = Colors.black;

  ThemeData getTheme(isDarkTheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white
      ),
    );
  }

  static ThemeData lightTheme() {
    final ThemeData theme = ThemeData(
      useMaterial3: true,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white
      ),
    );

    return theme.copyWith(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity
    );

  }

  static ThemeData darkTheme() {
    final ThemeData theme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.red
    );

    return theme.copyWith( colorScheme: theme.colorScheme.copyWith( secondary: Colors.yellow[700] ) );
  }

}