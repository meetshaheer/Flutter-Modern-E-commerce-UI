import 'package:flutter/material.dart';

class CAppBarTheme {
  CAppBarTheme._();

  static const lightTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
  );
}
