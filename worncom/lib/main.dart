import 'package:worncome/screens/Home%20Page/home.dart';
import 'package:worncome/screens/accounts%20page/accountsetting.dart';
import 'package:worncome/screens/on%20boarding/onBoarding.dart';
import 'package:worncome/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const mtyclass());
}

class mtyclass extends StatelessWidget {
  const mtyclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: accountSettign(),
      themeMode: ThemeMode.dark,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
    );
  }
}
