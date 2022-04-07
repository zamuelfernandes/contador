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
      debugShowCheckedModeBanner: false, // REMOVER A ETIQUETA DEBUG
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count1 = 0;
  int count2 = 0;

  bool get isEmpty => count1 == 0;
  bool get isFull => count1 == 20;

  void decrement() {
    setState(() {
      count1--;
      count2--;
    });
  }

  void increment() {
    setState(() {
      count1++;
      count2++;
    });
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
            //CAMPO DE INFORMAÇÃO ----------------------------------
            Text(
              isFull ? 'LOTADO!!' : 'Pode Entrar!!',
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),

            //CAMPO DOS VALORES -----------------------------------
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$count1',
                    style: TextStyle(
                      fontSize: 100,
                      color: isFull ? Colors.red : Colors.white,
                    ),
                  ),
                  const SizedBox(width: 70),
                  Text(
                    '$count2',
                    style: TextStyle(
                      fontSize: 100,
                      color: isFull ? Colors.red : Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            //ROW COM OS BOTÕES ----------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //BOTÃO DE SAIU ---------------------------------
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:
                        isEmpty ? Colors.white.withOpacity(0.3) : Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      //side: const BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: isEmpty ? null : decrement,
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
                //BOTÃO DE ENTROU ------------------------------
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:
                        isFull ? Colors.white.withOpacity(0.3) : Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      //side: const BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: isFull ? null : increment,
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
