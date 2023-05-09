
import 'package:flutter/material.dart';

class AppTheme {

  static const primaryColor = Color(0xFF7b61ff);
  static const greyColor = Colors.grey;
  static const blackColor = Colors.black;

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white
    ),
  );



}