import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images")),
      body: Center(
        child: Image.asset(
          'images/logo_flutter.jpg',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
