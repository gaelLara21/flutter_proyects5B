import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Colors.pink,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
        centerTitle: true,
        elevation: 5.2,
        backgroundColor: const Color.fromARGB(255, 14, 3, 85),
      ),
      backgroundColor: const Color.fromARGB(255, 234, 184, 5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de taps',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print('tocaste el boton, valor del contador :  $contador');
          //contador++;
        },
        backgroundColor: const Color.fromARGB(255, 3, 21, 52),
        foregroundColor: const Color.fromARGB(255, 234, 184, 5),
        child: const Icon(Icons.add),
      ),
    );
  }
}
