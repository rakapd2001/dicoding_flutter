import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String message;

  const SecondPage({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back"))
        ],
      )),
    );
  }
}
