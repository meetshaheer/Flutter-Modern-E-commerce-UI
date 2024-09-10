import 'package:flutter/material.dart';

void main(List<String> args) {}

class mtyclass extends StatelessWidget {
  const mtyclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
