import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(mtyclass());
}

class mtyclass extends StatelessWidget {
  const mtyclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
      home: myapp(),
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
      body: const Column(
        children: [
          Text(
            "Hello World",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Text(
            "Hello World",
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "Hello World",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Text(
            "Hello World",
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
