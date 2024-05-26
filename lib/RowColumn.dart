import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row and Column"),
      ),
      body: const Columns(),
    );
  }
}

class Rows extends StatelessWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    );
  }
}

class Columns extends StatelessWidget {
  const Columns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Title Header',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text("Sub-title body")
      ],
    );
  }
}
