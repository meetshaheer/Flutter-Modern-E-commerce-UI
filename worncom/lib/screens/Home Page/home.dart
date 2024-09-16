import 'package:flutter/material.dart';
import 'package:worncome/components/header/customHeader.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            customHeader()
          ],
        ),
      ),
    );
  }
}