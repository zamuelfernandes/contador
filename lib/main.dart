import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless -> Atalhos
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode Entrar!!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            '11',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: const Text('Saiu'),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Text('Entrou'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
