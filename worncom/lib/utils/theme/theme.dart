import 'package:cartzy/utils/constants/colors.dart';
import 'package:cartzy/utils/theme/custom%20theme/appbar_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/bottomsheet_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/checkbox_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/chip_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/elevated_button_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/outlined_button_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/text_field_theme.dart';
import 'package:cartzy/utils/theme/custom%20theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: CColors.grey,
    brightness: Brightness.light,
    primaryColor: CColors.primary,
    textTheme: CTextTheme.lightTextTheme,
    chipTheme: CChipTheme.lightChipTheme,
    scaffoldBackgroundColor: CColors.white,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: CColors.grey,
    brightness: Brightness.dark,
    primaryColor: CColors.primary,
    textTheme: CTextTheme.darkTextTheme,
    chipTheme: CChipTheme.darkChipTheme,
    scaffoldBackgroundColor: CColors.black,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
  );
}
