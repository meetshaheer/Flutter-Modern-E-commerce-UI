import 'package:cartzy/utils/theme/custom%20theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    textTheme: CTextTheme.lightTextTheme,
  );

  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    primaryColor: Colors.blueAccent,
    textTheme: CTextTheme.darkTextTheme,
  );
}
