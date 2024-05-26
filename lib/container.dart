// container.dart
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container Page'),
        ),
        body: Column(
          children: [ContainerShadow(), ContainerBorder()],
        ));
  }
}

class ContainerShadow extends StatelessWidget {
  const ContainerShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red, boxShadow: [
        BoxShadow(color: Colors.black, offset: Offset(3, 6), blurRadius: 10)
      ]),
      margin: const EdgeInsets.all(10),
      child: const Text(
        "Hello World!",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class ContainerBorder extends StatelessWidget {
  const ContainerBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, border: Border.all(color: Colors.green, width: 3)),
      child: const Text(
        "Border Container",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
