import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless -> Atalhos
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: const Color.fromARGB(255, 22, 109, 224),
        child: const Text('Olá Mundo!!'),
        alignment: Alignment.center,
      ),
    );
  }
}
