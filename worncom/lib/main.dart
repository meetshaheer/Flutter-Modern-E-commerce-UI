import 'dart:math';

import 'package:worncome/components/bottomNavBar/bottomAppBar.dart';
import 'package:worncome/components/header/customHeader.dart';
import 'package:worncome/screens/login/login.dart';
import 'package:worncome/screens/on%20boarding/onBoarding.dart';
import 'package:worncome/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(mtyclass());
}

class mtyclass extends StatelessWidget {
  const mtyclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: customHeader(),
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
    );
  }
}
