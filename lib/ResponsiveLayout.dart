import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layout'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Screen width : ${screenSize.width.toStringAsFixed(2)}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            'Oritentaion : $orientation',
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class LayoutBuilder extends StatelessWidget {
  const LayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
