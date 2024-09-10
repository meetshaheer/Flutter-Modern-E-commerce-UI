import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(mtyclass());
}

class mtyclass extends StatelessWidget {
  const mtyclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myapp(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
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
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
