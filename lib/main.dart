// ignore_for_file: library_private_types_in_public_api

import 'package:dicoding_flutter/SecondPage.dart';
import 'package:flutter/material.dart';
import 'container.dart';
import 'RowColumn.dart';
import 'layouting.dart';
import 'Buttons.dart';
import 'Inputs.dart';
import 'Images.dart';
import 'Fonts.dart';
import 'ListViews.dart';
import 'ExpandedFlexible.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Page',
    home: MyPage(),
  ));
}

//PAGE
class MyPage extends StatelessWidget {
  final String message = 'Hello it is from First Page';

  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("List Halaman")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContainerPage()));
                  },
                  child: const Text("Pindah ke halaman container")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecondPage(message: message)));
                  },
                  child: const Text("Move to Second Page"))
            ],
          ),
        ),
      ),
    );
  }
}

// STATE, STATELESS, STATEFULL
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dicoding Flutter',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const Scaffold(
//         body: Center(
//           child: BiggerText(text: "Hello World!"),
//         ),
//       ),
//     );
//   }
// }

// class Heading extends StatelessWidget {
//   final String text;

//   const Heading({Key? key, required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//     );
//   }
// }

// class BiggerText extends StatefulWidget {
//   final String text;

//   const BiggerText({Key? key, required this.text}) : super(key: key);

//   @override
//   _BiggerTextState createState() => _BiggerTextState();
// }

// class _BiggerTextState extends State<BiggerText> {
//   double _textSize = 16.0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           widget.text,
//           style: TextStyle(fontSize: _textSize),
//         ),
//         ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _textSize = 32.0;
//               });
//             },
//             child: const Text("Perbesar Text")),
//         ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _textSize = 16.0;
//               });
//             },
//             child: const Text("Perkecil Text")),
//       ],
//     );
//   }
// }

// SCAFFOLD
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       title: 'Flutter Demo',
//       home: const FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Page"),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ))
//         ],
//         leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             )),
//       ),
//       body: Center(
//         child: Column(children: const [
//           Text("Hello World"),
//           ButtonPressed(text: 'Button Pressed')
//         ]),
//       ),
//     );
//   }
// }

// class ButtonPressed extends StatefulWidget {
//   final String text;
//   const ButtonPressed({Key? key, required this.text}) : super(key: key);

//   @override
//   State<ButtonPressed> createState() => _ButtonPressedState();
// }

// class _ButtonPressedState extends State<ButtonPressed> {
//   int _buttonCount = 0;
//   void incrementCounter() {
//     setState(() {
//       _buttonCount++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'widget.text - ${_buttonCount} ',
//           style: const TextStyle(fontSize: 20),
//         ),
//         FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               incrementCounter();
//             });
//           },
//           child: const Icon(Icons.add),
//         )
//       ],
//     );
//   }
// }


