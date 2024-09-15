import 'package:cartzy/on_boarding/onBoarding.dart';
import 'package:cartzy/utils/constants/font_family.dart';
import 'package:cartzy/utils/constants/image_strings.dart';
import 'package:cartzy/utils/constants/sizes.dart';
import 'package:cartzy/utils/theme/theme.dart';
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
      home: onboarding(),
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
    );
  }
}
