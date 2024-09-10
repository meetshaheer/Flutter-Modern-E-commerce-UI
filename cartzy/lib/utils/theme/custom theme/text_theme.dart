import 'package:flutter/material.dart';

class CTextTheme {
  CTextTheme._();

  static TextTheme lightTextTheme = const TextTheme(
      displayLarge: TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ));
  //
  static TextTheme darkTextTheme = const TextTheme(
      displayLarge: TextStyle(
    fontSize: 34,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  ));
}
