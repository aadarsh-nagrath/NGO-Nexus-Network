// Basic theme of Red - White and Black based on ThemeMode.system

import 'package:flutter/material.dart';
import 'package:vyasa/src/util/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static const Color _primaryColor = Colors.red;
  static const Color _primaryColorDark = Colors.red;
  // static const Color _backgroundColor = Colors.white;
  // static const Color _backgroundColorDark = Colors.black;

  static ThemeData lightTheme = ThemeData(
    primaryColor: _primaryColor,
    colorScheme: const ColorScheme.light(),
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: _primaryColorDark,
    colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );
}
