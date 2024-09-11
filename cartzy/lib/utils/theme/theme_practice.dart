import 'package:flutter/material.dart';

class myAppp extends StatelessWidget {
  const myAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("My Theme App"),
        ),
        body: Column(
          children: [
            Text("Hello Text"),
            Text("Hello Text"),
            Text("Hello Text"),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Hello I'm Elevated",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
            OutlinedButton(onPressed: () {}, child: Text("Hello I'm Outlined"))
          ],
        ));
  }
}
