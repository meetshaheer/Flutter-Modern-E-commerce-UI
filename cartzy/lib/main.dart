import 'package:cartzy/utils/constants/image_strings.dart';
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
      home: const myapp(),
      themeMode: ThemeMode.system,
      // theme: CAppTheme.lighttheme,
      // darkTheme: CAppTheme.darktheme,
      theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSwatch(backgroundColor: Color.fromARGB(255, 178, 242, 251))),
      darkTheme: ThemeData(brightness: Brightness.dark),
      //
    );
  }
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            PageView(
              children: [
                Column(
                  children: [
                    Image(
                      width: 400,
                      image: AssetImage(CImages.onBoardingImage1),
                    ),
                    Text(
                      "Chose your product",
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
