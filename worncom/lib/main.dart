import 'package:worncome/screens/account%20creation/accountCreationMsg.dart';
import 'package:worncome/screens/email%20verification/verifyEmail.dart';
import 'package:worncome/screens/forgot%20password/forgotPassword.dart';
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
      home: forgotPassword(),
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
    );
  }
}
