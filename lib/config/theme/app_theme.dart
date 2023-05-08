
import 'package:flutter/material.dart';

class AppTheme {

  static const primaryColor = Color(0xFF7b61ff);

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white
    ),
  );



}