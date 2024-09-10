import 'package:cartzy/utils/theme/custom%20theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.amberAccent[900],
    textTheme: CTextTheme.lightTextTheme,
  );
  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.amberAccent[900],
    textTheme: CTextTheme.lightTextTheme,
  );
}
