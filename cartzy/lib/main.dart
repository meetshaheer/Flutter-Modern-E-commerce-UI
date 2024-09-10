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
      home: myapp(),
      themeMode: ThemeMode.dark,
      //
      darkTheme: CAppTheme.darktheme,
    );
  }
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("My Theme Application"),
      ),
      body: Column(
        children: [
          Text(
            "Hello World",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Colors.amber[900]),
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text("Hello World", style: Theme.of(context).CA),
        ],
      ),
    );
  }
}
