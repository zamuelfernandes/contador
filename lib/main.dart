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
      debugShowCheckedModeBanner: false, // REMOVER O DEBUG
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 52, 168, 235),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //CAMPO DE INFORMAÇÃO
            const Text(
              'Pode Entrar!!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),

            //CAMPO DO VALOR
            const Padding(
              padding: EdgeInsets.all(70),
              child: Text(
                '11',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),

            //ROW COM OS BOTÕES
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //BOTÃO DE SAIU
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: decrement,
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                //BOTÃO DE ENTROU
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: increment,
                  child: const Text(
                    'Entrou',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
