import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inputs',
      theme: ThemeData(),
      home: const InputWidget(),
    );
  }
}

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? template;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Field(controller: _controller),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text("Submit"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
                      );
                    });
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text('Switch', style: TextStyle(fontSize: 20)),
            Switch(
                value: lightOn,
                onChanged: (bool value) {
                  setState(() {
                    lightOn = value;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light off'),
                    duration: const Duration(seconds: 2),
                  ));
                }),
            const SizedBox(
              height: 16.0,
            ),
            const Text('Radio Button', style: TextStyle(fontSize: 20)),
            ListTile(
              title: const Text('Material UI'),
              leading: Radio<String>(
                  value: 'Material UI',
                  groupValue: template,
                  onChanged: (String? value) {
                    setState(() {
                      template = value;
                    });
                    snackbarRadio(context);
                  }),
            ),
            ListTile(
              title: const Text('Bootstrap'),
              leading: Radio<String>(
                  value: 'Bootstrap',
                  groupValue: template,
                  onChanged: (String? value) {
                    setState(() {
                      template = value;
                    });
                    snackbarRadio(context);
                  }),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text('Checkboxx', style: TextStyle(fontSize: 20)),
            ListTile(
              title: Text("Agree / Diagree"),
              leading: Checkbox(
                  value: agree,
                  onChanged: (bool? value) {
                    setState(() {
                      agree = value!;
                      snackbarCheckbox(context);
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }

  void snackbarRadio(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$template selected'),
      duration: const Duration(seconds: 1),
    ));
  }

  void snackbarCheckbox(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$agree checked'),
      duration: const Duration(seconds: 1),
    ));
  }
}

class Field extends StatelessWidget {
  const Field({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter input here...",
          labelText: "Input"),
    );
  }
}
