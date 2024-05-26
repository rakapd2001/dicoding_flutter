import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                // ignore: sort_child_properties_last
                child: const Text("Elevated Button"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green)),
            const SizedBox(
              height: 15.0,
            ),
            TextButton(onPressed: () {}, child: const Text("Text Button")),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outlined Button")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.speaker)),
            DropdownButton<String>(
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    child: Text("Bootstrap"),
                    value: 'Bootstrap',
                  ),
                  DropdownMenuItem(
                    child: Text("Material UI"),
                    value: 'Material Ui',
                  ),
                ],
                hint: const Text("Choose Template"),
                onChanged: (String? value) {})
          ],
        ),
      ),
    );
  }
}
